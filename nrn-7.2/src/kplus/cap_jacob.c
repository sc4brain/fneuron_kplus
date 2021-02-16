#ifndef __CAP_JACOB__
#define __CAP_JACOB__
/* included by nrnoc/capac.c */


/* #define cm  vdata[i][0] */

void nrn_cap_jacob(NrnThread* _nt, Memb_list* ml)
{
  int count = ml->nodecount;
  double **vdata = ml->data;
  int i;
  double cfac = .001 * _nt->cj;
  double *vec_d   = _nt->_actual_d;
  int* ni = ml->nodeindices;
#pragma loop prefetch_indirect
#pragma loop prefetch
  for (i=0; i < count; i++) {
    vec_d[ni[i]] += cfac * vdata[i][0];
  }
}

#endif

void nrn_capacity_current(NrnThread* _nt, Memb_list* ml) {
  int count = ml->nodecount;
  double **vdata = ml->data;
  int i;
  double cfac = .001 * _nt->cj;
  double *vec_rhs =_nt->_actual_rhs;
  int* ni = ml->nodeindices;
#pragma loop simd
#pragma loop prefetch_indirect
#pragma loop prefetch  
  for (i=0; i < count; i++) {
    vdata[i][1]=cfac*vdata[i][0]*vec_rhs[ni[i]];
  }
}
