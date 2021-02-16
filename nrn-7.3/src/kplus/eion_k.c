#ifndef __EION_K__
#define __EION_K__

/*
#define erev	pd[i][0]
#define conci	pd[i][1]
#define conco	pd[i][2]
#define cur	pd[i][3]
#define dcurdv	pd[i][4]

#define iontype ppd[i][0].i

the bitmap is
03	concentration unused, nrnocCONST, DEP, STATE
04	initialize concentrations
030	reversal potential unused, nrnocCONST, DEP, STATE
040	initialize reversal potential
0100	calc reversal during fadvance
0200	ci being written by a model
0400	co being written by a model

#define charge global_charge(type)

*/

static void ion_cur(NrnThread* nt, Memb_list* ml, int type) {
  int count = ml->nodecount;
  Node** vnode = ml->nodelist;
  double **pd = ml->data;
  Datum **ppd = ml->pdata;
  int i;
  double rev_ion_charge = 1. / global_charge(type);
  double buf[500];
  double _ktf = (1000.*8.3134*(celsius + 273.15)/FARADAY);
  
  if(ion_charge==0){
    for (i=0; i < count; ++i) {
      pd[i][0] = 0.;
      pd[i][3] = 0.;
      pd[i][4] = 0.;
    }
  }else{
    for (i=0; i < count; ++i) {
      pd[i][3] = 0.;
      pd[i][4] = 0.;
      if (ppd[i][0].i & 0100) {
	pd[i][0] = 0.;
      }
    }


#pragma loop noalias
#pragma loop norecurrence
#pragma loop prefetch
#pragma loop simd
#pragma loop novrec
    for (i=0; i < count; i++) {
      //pd[i][0] += (ppd[i][0].i & 0100) * nrn_nernst(pd[i][1], pd[i][2], ion_charge);
      //pd[i][0] = _ktf * rev_ion_charge * log(pd[i][2]/pd[i][1]);
      buf[i] = _ktf * rev_ion_charge * log(pd[i][2]/pd[i][1]);
    }
  }
}


#endif
