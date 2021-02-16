#ifndef __CAP_JACOB__
#define __CAP_JACOB__
/* included by nrnoc/capac.c */


/* #define cm  vdata[i][0] */

void nrn_cap_jacob(NrnThread* _nt, Memb_list* ml)
{
  int count = ml->nodecount;
  Node **vnode = ml->nodelist;
  double **vdata = ml->data;
  int i;
  double cfac = .001 * _nt->cj;
  double *vec_d   = _nt->_actual_d;
  int* ni = ml->nodeindices;

  for (i=0; i < count; i++) {
    vec_d[ni[i]] += cfac * vdata[i][0];
  }
}

#endif
