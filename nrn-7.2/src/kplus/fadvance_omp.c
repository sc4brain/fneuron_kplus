/*          OpenMP version of fadvance                   */
/*                included by nrnoc/fadvance.c           */

#include <omp.h>

extern int nrn_inthread_; /* defined by multicore.c */

void* nrn_fixed_step_group_omp(void);
void* nrn_fixed_step_omp(void);


/* function of treeset.c */
//extern void nrn_rhs(NrnThread* _nt);
//extern void nrn_lhs(NrnThread* _nt);

void* nrn_fixed_step_group_omp(void) {
  int i;
  NrnThread *nth;

  nth = &(nrn_threads[0]);
  nth->_stop_stepping = 0;

  for (i = step_group_begin; i < step_group_n; ++i) {

    nrn_fixed_step_omp();

    if (nth->_stop_stepping) {
      //if (nth->id == 0) { step_group_end = i + 1; }
      step_group_end = i + 1;
      nth->_stop_stepping = 0;
      return (void*)0;
    }
  }
  //if (nth->id == 0) { step_group_end = step_group_n; }
  step_group_end = step_group_n;
  return (void*)0;
}

void* nrn_fixed_step_omp(void) {
  double wt;
  int i;
  //NrnThread *nth;

  
  nrn_inthread_ = 1;
  /**************** deliver1 *****************/
  for(i=0; i< nrn_nthread; i++){
    NrnThread *nth = &(nrn_threads[i]);
    deliver_net_events(nth);
  }
  wt = nrnmpi_wtime();

  //#pragma omp parallel
  {

    /*************** random play *****************/

#pragma omp parallel for
    for(i=0; i < nrn_nthread; i++){
      NrnThread *nth = &(nrn_threads[i]);
      nrn_random_play(nth);
#if ELIMINATE_T_ROUNDOFF
      nth->nrn_ndt_ += .5;
      nth->_t = nrn_tbase_ + nth->nrn_ndt_ * nrn_dt_;
#else
      nth->_t += .5 * nth->_dt;
#endif
    }

    /************ fixed play continuous **************/
#pragma omp parallel for
    for(i=0; i < nrn_nthread; i++){
      NrnThread *nth = &(nrn_threads[i]);

      fixed_play_continuous(nth);
    }

    /************** setup tree matrix ****************/
    /* setup_tree_matrix() -> nrn_rhs(); nrn_lhs();  */
    /*
      #pragma omp parallel for
      for(i=0; i < nrn_nthread; i++){
      nth = &(nrn_threads[i]);
      setup_tree_matrix(nth);
      }
    */
#pragma omp parallel for
    for(i=0; i < nrn_nthread; i++){
      NrnThread *nth = &(nrn_threads[i]);
      nrn_rhs_omp_part1(nth);
    }
  }

#ifndef KPLUS_MOD_OMP
  //#pragma omp parallel for
#endif
    for(i=0; i < nrn_nthread; i++){
      NrnThread *nth = &(nrn_threads[i]);
      nrn_rhs_omp_part2(nth);
    }

    //#pragma omp parallel
    {
#pragma omp parallel for
      for(i=0; i < nrn_nthread; i++){
	NrnThread *nth = &(nrn_threads[i]);
	nrn_rhs_omp_part3(nth);
      }

#pragma omp parallel for
      for(i=0; i < nrn_nthread; i++){
	NrnThread *nth = &(nrn_threads[i]);
	nrn_lhs_omp(nth);
      }

      /******************** solve *******************/

#pragma omp parallel for
      for(i=0; i < nrn_nthread; i++){
	NrnThread *nth = &(nrn_threads[i]);

	nrn_solve(nth);
	second_order_cur(nth);
	update(nth);
	CTADD
	  }
    }
    /******************** nonvint *******************/

    if (!nrnthread_v_transfer_) {
      // last part start
      CTBEGIN

#ifdef KPLUS_USE_OMP
#ifndef KPLUS_OMP_WITHOUT_NONVINT
#pragma omp parallel for
#endif
#endif
	for(i=0; i < nrn_nthread; i++){
	  NrnThread *nth = &(nrn_threads[i]);

#if ELIMINATE_T_ROUNDOFF
	  nth->nrn_ndt_ += .5;
	  nth->_t = nrn_tbase_ + nth->nrn_ndt_ * nrn_dt_;
#else
	  nth->_t += .5 * nth->_dt;
#endif
	  fixed_play_continuous(nth);
	    
	  nonvint(nth);
	  nrn_ba(nth, AFTER_SOLVE);
	  fixed_record_continuous(nth);
	  CTADD
	    }

      /******************** deliver2 *******************/
      for(i=0; i < nrn_nthread; i++){
	NrnThread *nth = &(nrn_threads[i]);
	nrn_deliver_events(nth) ; /* up to but not past texit */
      }
    }


    nrn_inthread_ = 0;
    return (void*)0;
}


void nrn_rhs_omp_part1(NrnThread* _nt)
{
  int i, i1=0, i2=i1+_nt->ncell, i3=_nt->end;
  NrnThreadMembList* tml;	

  if(!use_cachevec){ printf("ERROR : cachevec not enabled.\n"); return; }
  if(use_sparse13){ printf("ERROR : sparce13 is not allowed.\n"); return; }
  
  if (diam_changed) {
    nrn_thread_error("need recalc_diam()");
    recalc_diam();
  }

  for (i = i1; i < i3; ++i) {
    VEC_RHS(i) = 0.;
  }
  nrn_ba(_nt, BEFORE_BREAKPOINT);
}


void nrn_rhs_omp_part2(NrnThread* _nt)
{
  double w;
  int measure = 0;
  NrnThreadMembList* tml;
  if (_nt->id == 0 && nrn_mech_wtime_) { measure = 1; }

  /* note that CAP has no current */
  for (tml = _nt->tml; tml; tml = tml->next){
    if (memb_func[tml->index].current) {
      Pfri s = memb_func[tml->index].current;
      if (measure) { w = nrnmpi_wtime(); }
      (*s)(_nt, tml->ml, tml->index);
      if (measure) { nrn_mech_wtime_[tml->index] += nrnmpi_wtime() - w; }
      if (errno) {
	if (nrn_errno_check(tml->index)) {
	  hoc_warning("errno set during calculation of currents", (char*)0);
	}
      }
    }
  }
}


void nrn_rhs_omp_part3(NrnThread* _nt)
{
  int i, i1=0, i2=i1+_nt->ncell, i3=_nt->end;

  activsynapse_rhs();

#if EXTRACELLULAR
  /* Cannot have any axial terms yet so that i(vm) can be calculated from
     i(vm)+is(vi) and is(vi) which are stored in rhs vector. */
  nrn_rhs_ext(_nt);
  /* nrn_rhs_ext has also computed the the internal axial current
     for those nodes containing the extracellular mechanism
  */
#endif

  activstim_rhs();
  activclamp_rhs();
  /* now the internal axial currents.
     The extracellular mechanism contribution is already done.
     rhs += ai_j*(vi_j - vi)
  */

  for (i = i2; i < i3; ++i) {
    double dv = VEC_V(_nt->_v_parent_index[i]) - VEC_V(i);
    /* our connection coefficients are negative so */
    VEC_RHS(i) -= VEC_B(i)*dv;
    VEC_RHS(_nt->_v_parent_index[i]) += VEC_A(i)*dv;
  }
}



void nrn_lhs_omp(NrnThread* _nt) {
  int i, i1, i2, i3;
  NrnThreadMembList* tml;


  if(!use_cachevec){ printf("ERROR : cachevec not enabled.\n"); return; }
  if(use_sparse13){ printf("ERROR : sparce13 is not allowed.\n"); return; }


  double *vec_a = _nt->_actual_a;
  double *vec_b = _nt->_actual_b;
  double *vec_d = _nt->_actual_d;
  double *vec_rhs = _nt->_actual_rhs;
  double *vec_v = _nt->_actual_v;
  int *parent_index = _nt->_v_parent_index;

  i1 = 0;
  i2 = i1 + _nt->ncell;
  i3 = _nt->end;

  if (diam_changed) {
    nrn_thread_error("need recalc_diam()");
  }

  for (i = i1; i < i3; ++i) {
    //VEC_D(i) = 0.;
    vec_d[i] = 0.;
  }

  /* note that CAP has no jacob */
  for (tml = _nt->tml; tml; tml = tml->next) if (memb_func[tml->index].jacob) {
    Pfri s = memb_func[tml->index].jacob;
    (*s)(_nt, tml->ml, tml->index);
    if (errno) {
      if (nrn_errno_check(tml->index)) {
	hoc_warning("errno set during calculation of jacobian", (char*)0);
      }
    }
  }
  /* now the cap current can be computed because any change to cm by another model
     has taken effect
  */
  /* note, the first is CAP */
  if (_nt->tml) {
    assert(_nt->tml->index == CAP);
    nrn_cap_jacob(_nt, _nt->tml->ml);
  }

  activsynapse_lhs();

#if EXTRACELLULAR
  /* nde->_d[0] contains the -ELECTRODE_CURRENT contribution to nd->_d */
  nrn_setup_ext(_nt);
#endif

  activclamp_lhs();

  /* at this point d contains all the membrane conductances */


  /* now add the axial currents */

  for (i=i2; i < i3; ++i) {
    //VEC_D(i) -= VEC_B(i);
    vec_d[i] -= vec_b[i];
  }

  for (i=i2; i < i3; ++i) {
    //VEC_D(_nt->_v_parent_index[i]) -= VEC_A(i);
    vec_d[parent_index[i]] -= vec_a[i];
  }
}


