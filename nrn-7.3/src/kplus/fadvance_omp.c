#ifndef __FADVANCE_OMP_H__
#define __FADVANCE_OMP_H__


/*********************************************************/
/*                                                       */
/*          OpenMP version of fadvance                   */
/*                included by nrnoc/fadvance.c           */
/*                          20150614 nebula              */
/*                                                       */
/*********************************************************/
#include <omp.h>

#ifdef KPLUS_USE_FIPP_RANGE
#include "fj_tool/fipp.h"
#endif

#ifdef KPLUS_USE_FAPP_RANGE
#include "fj_tool/fapp.h"
#endif

extern int nrn_nthread;
extern NrnThread* nrn_threads;
extern nrn_inthread_;


void nrn_multithread_job_omp(void*(*job)(NrnThread*));
void* nrn_fixed_step_group_thread_omp(NrnThread* nth);
void* nrn_fixed_step_thread_omp(NrnThread* nth);
void* nrn_fixed_step_lastpart_omp(NrnThread* nth);
void nonvint_omp(NrnThread* _nt);
static void update_omp(NrnThread* _nt);

void nrn_multithread_job_omp(void*(*job)(NrnThread*)) {
  int i;

#ifdef KPLUS_USE_FIPP_RANGE
  fipp_start();
#endif
  
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("calc", 1, 1);
#endif

#ifdef KPLUS_USE_FADVANCE_OMP
#pragma omp parallel for
#endif
  for (i=0; i < nrn_nthread; ++i) {
      (*job)(nrn_threads + i);
  }
}


void* nrn_fixed_step_group_thread_omp(NrnThread* nth) {
  int i;
  nth->_stop_stepping = 0;
  for (i = step_group_begin; i < step_group_n; ++i) {
    nrn_fixed_step_thread_omp(nth);
    if (nth->_stop_stepping) {
      if (nth->id == 0) { step_group_end = i + 1; }
      nth->_stop_stepping = 0;
      return (void*)0;
    }
  }
  if (nth->id == 0) { step_group_end = step_group_n; }
  return (void*)0;
}

void* nrn_fixed_step_thread_omp(NrnThread* nth) {

  //printf("critical2\n");

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("deliver1", 4, 2);
#endif

#ifdef KPLUS_USE_FADVANCE_OMP
#pragma omp critical
#endif
  {
      deliver_net_events(nth);
  }

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("deliver1", 4, 2);
#endif
    
  
  nrn_random_play(nth);
    
#if ELIMINATE_T_ROUNDOFF
  nth->nrn_ndt_ += .5;
  nth->_t = nrn_tbase_ + nth->nrn_ndt_ * nrn_dt_;
#else
  nth->_t += .5 * nth->_dt;
#endif
    

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("fixed_play", 6, 2);
#endif
  fixed_play_continuous(nth);
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("fixed_play", 6, 2);
#endif

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("setup_tree", 7, 2);
#endif
  setup_tree_matrix(nth);
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("setup_tree", 7, 2);
#endif
  
  
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("solve", 2, 2);
#endif
  nrn_solve(nth);
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("solve", 2, 2);
#endif
  
  second_order_cur(nth);
  
  update_omp(nth);
  
  /*
    To simplify the logic,
    if there is no nrnthread_v_transfer then there cannot be an nrnmpi_v_transfer.
  */
  if (!nrnthread_v_transfer_) {
    nrn_fixed_step_lastpart_omp(nth);
  }
  return (void*)0;
}


void* nrn_fixed_step_lastpart_omp(NrnThread* nth) {
#if NRN_DAQ
	nrn_daq_ao();
#endif
#if ELIMINATE_T_ROUNDOFF
	nth->nrn_ndt_ += .5;
	nth->_t = nrn_tbase_ + nth->nrn_ndt_ * nrn_dt_;
#else
	nth->_t += .5 * nth->_dt;
#endif

	fixed_play_continuous(nth);

#if NRN_DAQ
	nrn_daq_scanstart();
#endif

	nrn_extra_scatter_gather(0, nth->id);

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("nonvint", 3, 2);
#endif
	nonvint_omp(nth);
	nrn_ba(nth, AFTER_SOLVE);
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("nonvint", 3, 2);
#endif

#if NRN_DAQ
	nrn_daq_ai();
#endif

	fixed_record_continuous(nth);

      
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("deliver2", 5, 2);
#endif

#ifdef KPLUS_USE_FADVANCE_OMP
#pragma omp critical
#endif
  {
	nrn_deliver_events(nth);
  }

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("deliver2", 5, 2);
#endif

  return (void*)0;
}


void nonvint_omp(NrnThread* _nt)
{

  int i;
  double w;
  int measure = 0;
  NrnThreadMembList* tml;

  /* nrnmpi_v_transfer if needed was done earlier */
  if (nrnthread_v_transfer_) {(*nrnthread_v_transfer_)(_nt);}

  //if (_nt->id == 0 && nrn_mech_wtime_) { measure = 1; }
  errno = 0;
  for (tml = _nt->tml; tml; tml = tml->next){
    if (memb_func[tml->index].state) {
      Pvmi s = memb_func[tml->index].state;
      //if (measure) { w = nrnmpi_wtime(); }
      (*s)(_nt, tml->ml, tml->index);
      //if (measure) { nrn_mech_wtime_[tml->index] += nrnmpi_wtime() - w; }
      if (errno) {
	if (nrn_errno_check(i)) {
	  hoc_warning("errno set during calculation of states", (char*)0);
	}
      }
    }
  }
  long_difus_solve(0, _nt); /* if any longitudinal diffusion */
  nrn_nonvint_block_fixed_step_solve(_nt->id);
}

static void update_omp(NrnThread* _nt)
{
  int i, i1, i2;
  i1 = 0;
  i2 = _nt->end;

  double *vec_rhs = _nt->_actual_rhs;
  double *vec_v   = _nt->_actual_v;

  /* do not need to worry about linmod or extracellular*/
  if (secondorder) {
    for (i=0; i < i2; ++i) {
      vec_v[i] += 2.*vec_rhs[i];
    }
  }else{
    for (i=0; i < i2; ++i) {
      vec_v[i] += vec_rhs[i];
    }
  }

#if EXTRACELLULAR
  nrn_update_2d(_nt);
#endif

#if I_MEMBRANE
  if (_nt->tml) {
    assert(_nt->tml->index == CAP);
    nrn_capacity_current(_nt, _nt->tml->ml);
  }
#endif

}

#endif
