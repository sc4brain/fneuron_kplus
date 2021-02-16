#ifndef __TRIANG_BKSUB__
#define __TRIANG_BKSUB__

#ifdef KPLUS_USE_FIPP_RANGE
#include "fj_tool/fipp.h"
#endif

#ifdef KPLUS_USE_FAPP_RANGE
#include "fj_tool/fapp.h"
#endif

/****** memo ****************************
#define VEC_A(i) (_nt->_actual_a[(i)])
#define VEC_B(i) (_nt->_actual_b[(i)])
#define VEC_D(i) (_nt->_actual_d[(i)])
#define VEC_RHS(i) (_nt->_actual_rhs[(i)])
#define VEC_V(i) (_nt->_actual_v[(i)])
*****************************************/


/* triangularization of the matrix equations */
void triang(NrnThread* _nt)
{
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("triang", 10, 3);
#endif

  int i, i2, i3;
  i2 = _nt->ncell;
  i3 = _nt->end;
  const int *v_parent_index = _nt->_v_parent_index;
  const double *vec_a   = _nt->_actual_a;
  const double *vec_b   = _nt->_actual_b;
  double *vec_d   = _nt->_actual_d;
  double *vec_rhs = _nt->_actual_rhs;
  //double *vec_v   = _nt->_actual_v;

#pragma loop noalias
  for (i = i3 - 1; i >= i2; i--) {
    double p;
    p = vec_a[i] / vec_d[i];
    vec_d[v_parent_index[i]] -= p * vec_b[i];
    vec_rhs[v_parent_index[i]] -= p * vec_rhs[i];
  }

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("triang", 10, 3);
#endif

}

/* back substitution to finish solving the matrix equations */
void bksub(NrnThread* _nt)
{
#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("bksub", 11, 3);
#endif

  int i, i1, i2, i3;
  i1 = 0;
  i2 = i1 + _nt->ncell;
  i3 = _nt->end;
  const double *vec_a   = _nt->_actual_a;
  const double *vec_b   = _nt->_actual_b;
  const double *vec_d   = _nt->_actual_d;
  const double *vec_v   = _nt->_actual_v;
  const int *v_parent_index = _nt->_v_parent_index;
  double *vec_rhs = _nt->_actual_rhs;

  for (i = 0; i < i2; i++) {
    vec_rhs[i] = vec_rhs[i] / vec_d[i];
  }
#pragma loop noalias
  for (i = i2; i < i3; i++) {
    vec_rhs[i] = (vec_rhs[i] - (vec_b[i] * vec_rhs[v_parent_index[i]])) / vec_d[i];
  }

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("bksub", 11, 3);
#endif
}

#endif
