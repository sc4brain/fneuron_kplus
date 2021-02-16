#ifndef __FADVANCE_OMP_H__
#define __FADVANCE_OMP_H__


/*********************************************************/
/*                                                       */
/*          OpenMP version of fadvance                   */
/*                included by nrnoc/fadvance.c           */
/*                          20141006 nebula              */
/*                                                       */
/*********************************************************/

#include <omp.h>


void* nrn_fixed_step_group_thread_omp(NrnThread* nth) ;
void* nrn_fixed_step_thread_omp(NrnThread* nth) ;
void* nrn_fixed_step_lastpart_omp(NrnThread* nth);


void nrn_multithread_job_omp() {
  int i;
  int j;
  
  
  //#pragma omp parallel for
  for (i=0; i < nrn_nthread; i++) {
    NrnThread *nth = nrn_threads + i;
    nth->_stop_stepping = 0;
  }


  for (j = step_group_begin; j < step_group_n; j++) {
    
    /************ deliver net event ***************/    
    for (i=0; i < nrn_nthread; i++) {
      NrnThread *nth = nrn_threads + i;
      deliver_net_events(nth);
    }

    /* START omp parallel */
#pragma omp parallel
    {

    /************ fixed step ***************/    
#pragma omp for
      for (i=0; i < nrn_nthread; i++) {
	NrnThread *nth = nrn_threads + i;
	nrn_fixed_step_thread_omp(nth);
      }

    /************ lastpart ***************/    
#pragma omp for    
      for (i=0; i < nrn_nthread; i++) {
	NrnThread *nth = nrn_threads + i;
	if (!nrnthread_v_transfer_) {
	  //nrn_fixed_step_lastpart_omp(nth);
	  double wt = nrnmpi_wtime();
	
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
	  nth->_ctime += nrnmpi_wtime() - wt;
	  
	  //nrn_deliver_events(nth) ; /* up to but not past texit */
	}
      }

    }
    /* END omp parallel */


    for (i=0; i < nrn_nthread; i++) {
      NrnThread *nth = nrn_threads + i;
      nrn_deliver_events(nth);
    }
    
    for (i=0; i < nrn_nthread; i++) {
      NrnThread *nth = nrn_threads + i;
      if (nth->_stop_stepping) {
	if (nth->id == 0) { step_group_end = j + 1; }
	nth->_stop_stepping = 0;
	break;
      }
    }
  }
  if (j == step_group_n) { step_group_end = step_group_n; }

}


void _nrn_multithread_job_omp() {
  int i;  
  for (i=0; i < nrn_nthread; i++) {
    int j;
    NrnThread *nth = nrn_threads + i;
    nth->_stop_stepping = 0;
    for (j = step_group_begin; j < step_group_n; j++) {
      
      deliver_net_events(nth);
      
      nrn_fixed_step_thread_omp(nth);
      
      if (!nrnthread_v_transfer_) {
	nrn_fixed_step_lastpart(nth);
      }
      if (nth->_stop_stepping) {
	if (nth->id == 0) { step_group_end = j + 1; }
	nth->_stop_stepping = 0;
	break;
      }
    }
    if (j == step_group_n) { step_group_end = step_group_n; }
  }
}



void* nrn_fixed_step_group_thread_omp(NrnThread* nth) 
{
	int i;
	nth->_stop_stepping = 0;
	for (i = step_group_begin; i < step_group_n; ++i) {

#pragma omp critical
	  deliver_net_events(nth);

	  nrn_fixed_step_thread_omp(nth);

#pragma omp critical
	  if (!nrnthread_v_transfer_) {
	    nrn_fixed_step_lastpart(nth);
	  }


	  if (nth->_stop_stepping) {
	    if (nth->id == 0) { step_group_end = i + 1; }
	    nth->_stop_stepping = 0;
	    return (void*)0;
	  }
	}
	if (nth->id == 0) { step_group_end = step_group_n; }

	return (void*)0;
}

void* nrn_fixed_step_thread_omp(NrnThread* nth) 
{
	double wt;


	wt = nrnmpi_wtime();

	nrn_random_play(nth);

#if ELIMINATE_T_ROUNDOFF
	nth->nrn_ndt_ += .5;
	nth->_t = nrn_tbase_ + nth->nrn_ndt_ * nrn_dt_;
#else
	nth->_t += .5 * nth->_dt;
#endif

	fixed_play_continuous(nth);

	setup_tree_matrix(nth);

	nrn_solve(nth);

	second_order_cur(nth);

	update(nth);

	CTADD
/*
  To simplify the logic,
  if there is no nrnthread_v_transfer then there cannot be an nrnmpi_v_transfer.
*/

	return (void*)0;
}


void* nrn_fixed_step_lastpart_omp(NrnThread* nth) {
  double wt = nrnmpi_wtime();

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
  nth->_ctime += nrnmpi_wtime() - wt;

  nrn_deliver_events(nth) ; /* up to but not past texit */
  return (void*)0;
}

#endif
