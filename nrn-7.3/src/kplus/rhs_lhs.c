#ifndef __RHS_LHS__
#define __RHS_LHS__

#ifdef KPLUS_USE_FIPP_RANGE
#include "fj_tool/fipp.h"
#endif

#ifdef KPLUS_USE_FAPP_RANGE
#include "fj_tool/fapp.h"
#endif

void nrn_rhs(NrnThread* _nt) {
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("rhs", 20, 3);
#endif
  int i, i1, i2, i3;
  double w;
  int measure = 0;
  NrnThreadMembList* tml;

  double *vec_a   = _nt->_actual_a;
  double *vec_b   = _nt->_actual_b;
  double *vec_d   = _nt->_actual_d;
  double *vec_rhs = _nt->_actual_rhs;
  double *vec_v   = _nt->_actual_v;
  int *v_parent_index = _nt->_v_parent_index;
  
  i1 = 0;
  i2 = i1 + _nt->ncell;
  i3 = _nt->end;
  if (_nt->id == 0 && nrn_mech_wtime_) { measure = 1; }
  
  if (diam_changed) {
    nrn_thread_error("need recalc_diam()");
    recalc_diam();
  }

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("rhs0", 22, 4);
#endif
  for (i = 0; i < i3; ++i) {
    vec_rhs[i] = 0.;
  }
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("rhs0", 22, 4);
#endif

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("rhs1", 23, 4);
#endif
  nrn_ba(_nt, BEFORE_BREAKPOINT);
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("rhs1", 23, 4);
#endif


#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("rhs2", 24, 4);
#endif
  /* note that CAP has no current */
  for (tml = _nt->tml; tml; tml = tml->next){
    if (memb_func[tml->index].current) {
      Pvmi s = memb_func[tml->index].current;
      //if (measure) { w = nrnmpi_wtime(); }
      (*s)(_nt, tml->ml, tml->index);
      //if (measure) { nrn_mech_wtime_[tml->index] += nrnmpi_wtime() - w; }
      if (errno) {
	if (nrn_errno_check(tml->index)) {
	  hoc_warning("errno set during calculation of currents", (char*)0);
	}
      }
    }
  }
  activsynapse_rhs();
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("rhs2", 24, 4);
#endif

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("rhs3", 25, 4);
#endif

#if EXTRACELLULAR
/*
  Cannot have any axial terms yet so that i(vm) can be calculated from
  i(vm)+is(vi) and is(vi) which are stored in rhs vector. 
*/
  nrn_rhs_ext(_nt);
/*
  nrn_rhs_ext has also computed the the internal axial current
  for those nodes containing the extracellular mechanism
*/
#endif
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("rhs4", 25, 4);
#endif
    
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("rhs4", 26, 4);
#endif
  activstim_rhs();
  activclamp_rhs();
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("rhs4", 26, 4);
#endif


#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("rhs5", 27, 4);
#endif
  /* now the internal axial currents.
     The extracellular mechanism contribution is already done.
     rhs += ai_j*(vi_j - vi)
  */
  for (i = i2; i < i3; ++i) {
    double dv = vec_v[v_parent_index[i]] - vec_v[i];
    /* our connection coefficients are negative so */
    //VEC_RHS(i) -= VEC_B(i)*dv;
    vec_rhs[i] = vec_rhs[i] - vec_b[i]* dv; 
    //VEC_RHS(_nt->_v_parent_index[i]) += VEC_A(i)*dv;
    vec_rhs[v_parent_index[i]] += vec_a[i] *dv;
  }
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("rhs5", 27, 4);
#endif

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("rhs", 20, 3);
#endif
}

/* calculate left hand side of
cm*dvm/dt = -i(vm) + is(vi) + ai_j*(vi_j - vi)
cx*dvx/dt - cm*dvm/dt = -gx*(vx - ex) + i(vm) + ax_j*(vx_j - vx)
with a matrix so that the solution is of the form [dvm+dvx,dvx] on the right
hand side after solving.
This is a common operation for fixed step, cvode, and daspk methods
*/

void nrn_lhs(NrnThread* _nt) {

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("lhs", 21, 3);
#endif
  int i, i1, i2, i3;
  NrnThreadMembList* tml;

  double *vec_a   = _nt->_actual_a;
  double *vec_b   = _nt->_actual_b;
  double *vec_d   = _nt->_actual_d;
  double *vec_rhs = _nt->_actual_rhs;
  double *vec_v   = _nt->_actual_v;
  int *v_parent_index = _nt->_v_parent_index;
  
  i1 = 0;
  i2 = i1 + _nt->ncell;
  i3 = _nt->end;

  if (diam_changed) {
    nrn_thread_error("need recalc_diam()");
  }

  for (i = 0; i < i3; ++i) {
    vec_d[i] = 0.;
  }

  /* note that CAP has no jacob */
  for (tml = _nt->tml; tml; tml = tml->next){
    if (memb_func[tml->index].jacob) {
      Pvmi s = memb_func[tml->index].jacob;
      (*s)(_nt, tml->ml, tml->index);
      if (errno) {
	if (nrn_errno_check(tml->index)) {
	  hoc_warning("errno set during calculation of jacobian", (char*)0);
	}
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
    vec_d[i] = vec_d[i] - vec_b[i];
    vec_d[v_parent_index[i]] -= vec_a[i];
  }

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("lhs", 21, 3);
#endif
}

#endif
