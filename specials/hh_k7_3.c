/* Created by Language version: 6.2.0 */
/* VECTORIZED */
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "scoplib_ansi.h"
#undef PI
#define nil 0
#include "md1redef.h"
#include "section.h"
#include "nrniv_mf.h"
#include "md2redef.h"
 
#if METHOD3
extern int _method3;
#endif

#if !NRNGPU
#undef exp
#define exp hoc_Exp
extern double hoc_Exp(double);
#endif
 
#define _threadargscomma_ _p, _ppvar, _thread, _nt,
#define _threadargs_ _p, _ppvar, _thread, _nt
 
#define _threadargsprotocomma_ double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt,
#define _threadargsproto_ double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt
 	/*SUPPRESS 761*/
	/*SUPPRESS 762*/
	/*SUPPRESS 763*/
	/*SUPPRESS 765*/
	 extern double *getarg();
 /* Thread safe. No static _p or _ppvar. */
 
#define t _nt->_t
#define dt _nt->_dt
#define gnabar _p[0]
#define gkbar _p[1]
#define gl _p[2]
#define el _p[3]
#define gna _p[4]
#define gk _p[5]
#define il _p[6]
#define m _p[7]
#define h _p[8]
#define n _p[9]
#define Dm _p[10]
#define Dh _p[11]
#define Dn _p[12]
#define ena _p[13]
#define ek _p[14]
#define ina _p[15]
#define ik _p[16]
#define v _p[17]
#define _g _p[18]
#define _ion_ena	*_ppvar[0]._pval
#define _ion_ina	*_ppvar[1]._pval
#define _ion_dinadv	*_ppvar[2]._pval
#define _ion_ek	*_ppvar[3]._pval
#define _ion_ik	*_ppvar[4]._pval
#define _ion_dikdv	*_ppvar[5]._pval
 
#if MAC
#if !defined(v)
#define v _mlhv
#endif
#if !defined(h)
#define h _mlhh
#endif
#endif
 
#if defined(__cplusplus)
extern "C" {
#endif
 static int hoc_nrnpointerindex =  -1;
 static Datum* _extcall_thread;
 static Prop* _extcall_prop;
 /* external NEURON variables */
 extern double celsius;
 /* declaration of user functions */
 static void _hoc_rates(void);
 static void _hoc_vtrap(void);
 static int _mechtype;
extern void _nrn_cacheloop_reg(int, int);
extern void hoc_register_prop_size(int, int, int);
extern void hoc_register_limits(int, HocParmLimits*);
extern void hoc_register_units(int, HocParmUnits*);
extern void nrn_promote(Prop*, int, int);
extern Memb_func* memb_func;
 extern void _nrn_setdata_reg(int, void(*)(Prop*));
 static void _setdata(Prop* _prop) {
 _extcall_prop = _prop;
 }
 static void _hoc_setdata() {
 Prop *_prop, *hoc_getdata_range(int);
 _prop = hoc_getdata_range(_mechtype);
   _setdata(_prop);
 hoc_retpushx(1.);
}
 /* connect user functions to hoc names */
 static VoidFunc hoc_intfunc[] = {
 "setdata_hh_k", _hoc_setdata,
 "rates_hh_k", _hoc_rates,
 "vtrap_hh_k", _hoc_vtrap,
 0, 0
};
#define vtrap vtrap_hh_k
 extern double vtrap( _threadargsprotocomma_ double , double );
 
static void _check_rates(double*, Datum*, Datum*, _NrnThread*); 
static void _check_table_thread(double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt, int _type) {
   _check_rates(_p, _ppvar, _thread, _nt);
 }
 /* declare global and static user variables */
 static int _thread1data_inuse = 0;
static double _thread1data[6];
#define _gth 0
#define htau_hh_k _thread1data[0]
#define htau _thread[_gth]._pval[0]
#define hinf_hh_k _thread1data[1]
#define hinf _thread[_gth]._pval[1]
#define mtau_hh_k _thread1data[2]
#define mtau _thread[_gth]._pval[2]
#define minf_hh_k _thread1data[3]
#define minf _thread[_gth]._pval[3]
#define ntau_hh_k _thread1data[4]
#define ntau _thread[_gth]._pval[4]
#define ninf_hh_k _thread1data[5]
#define ninf _thread[_gth]._pval[5]
#define usetable usetable_hh_k
 double usetable = 1;
 /* some parameters have upper and lower limits */
 static HocParmLimits _hoc_parm_limits[] = {
 "gl_hh_k", 0, 1e+09,
 "gkbar_hh_k", 0, 1e+09,
 "gnabar_hh_k", 0, 1e+09,
 "usetable_hh_k", 0, 1,
 0,0,0
};
 static HocParmUnits _hoc_parm_units[] = {
 "mtau_hh_k", "ms",
 "htau_hh_k", "ms",
 "ntau_hh_k", "ms",
 "gnabar_hh_k", "S/cm2",
 "gkbar_hh_k", "S/cm2",
 "gl_hh_k", "S/cm2",
 "el_hh_k", "mV",
 "gna_hh_k", "S/cm2",
 "gk_hh_k", "S/cm2",
 "il_hh_k", "mA/cm2",
 0,0
};
 static double delta_t = 0.01;
 static double h0 = 0;
 static double m0 = 0;
 static double n0 = 0;
 /* connect global user variables to hoc */
 static DoubScal hoc_scdoub[] = {
 "minf_hh_k", &minf_hh_k,
 "hinf_hh_k", &hinf_hh_k,
 "ninf_hh_k", &ninf_hh_k,
 "mtau_hh_k", &mtau_hh_k,
 "htau_hh_k", &htau_hh_k,
 "ntau_hh_k", &ntau_hh_k,
 "usetable_hh_k", &usetable_hh_k,
 0,0
};
 static DoubVec hoc_vdoub[] = {
 0,0,0
};
 static double _sav_indep;
 static void nrn_alloc(Prop*);
static void  nrn_init(_NrnThread*, _Memb_list*, int);
static void nrn_state(_NrnThread*, _Memb_list*, int);
 static void nrn_cur(_NrnThread*, _Memb_list*, int);
static void  nrn_jacob(_NrnThread*, _Memb_list*, int);
 
static int _ode_count(int);
static void _ode_map(int, double**, double**, double*, Datum*, double*, int);
static void _ode_spec(_NrnThread*, _Memb_list*, int);
static void _ode_matsol(_NrnThread*, _Memb_list*, int);
 
#define _cvode_ieq _ppvar[6]._i
 /* connect range variables in _p that hoc is supposed to know about */
 static const char *_mechanism[] = {
 "6.2.0",
"hh_k",
 "gnabar_hh_k",
 "gkbar_hh_k",
 "gl_hh_k",
 "el_hh_k",
 0,
 "gna_hh_k",
 "gk_hh_k",
 "il_hh_k",
 0,
 "m_hh_k",
 "h_hh_k",
 "n_hh_k",
 0,
 0};
 static Symbol* _na_sym;
 static Symbol* _k_sym;
 
extern Prop* need_memb(Symbol*);
 static void _initlists();
  /* some states have an absolute tolerance */
 static Symbol** _atollist;
 static HocStateTolerance _hoc_state_tol[] = {
 0,0
};
 static void _thread_mem_init(Datum*);
 static void _thread_cleanup(Datum*);
 static void _update_ion_pointer(Datum*);
 extern Symbol* hoc_lookup(const char*);
extern void _nrn_thread_reg(int, int, void(*f)(Datum*));
extern void _nrn_thread_table_reg(int, void(*)(double*, Datum*, Datum*, _NrnThread*, int));
extern void hoc_register_tolerance(int, HocStateTolerance*, Symbol***);
extern void _cvode_abstol( Symbol**, double*, int);

 void _hh_k_reg() {
	int _vectorized = 1;
  _initlists();
 	ion_reg("na", -10000.);
 	ion_reg("k", -10000.);
 	_na_sym = hoc_lookup("na_ion");
 	_k_sym = hoc_lookup("k_ion");
 	register_mech(_mechanism, nrn_alloc,nrn_cur, nrn_jacob, nrn_state, nrn_init, hoc_nrnpointerindex, 2);
  _extcall_thread = (Datum*)ecalloc(1, sizeof(Datum));
  _thread_mem_init(_extcall_thread);
  _thread1data_inuse = 0;
 _mechtype = nrn_get_mechtype(_mechanism[1]);
     _nrn_setdata_reg(_mechtype, _setdata);
     _nrn_thread_reg(_mechtype, 1, _thread_mem_init);
     _nrn_thread_reg(_mechtype, 0, _thread_cleanup);
     _nrn_thread_reg(_mechtype, 2, _update_ion_pointer);
     _nrn_thread_table_reg(_mechtype, _check_table_thread);
  hoc_register_dparam_size(_mechtype, 7);
 	hoc_register_cvode(_mechtype, _ode_count, _ode_map, _ode_spec, _ode_matsol);
 	hoc_register_tolerance(_mechtype, _hoc_state_tol, &_atollist);
 	hoc_register_var(hoc_scdoub, hoc_vdoub, hoc_intfunc);
 	ivoc_help("help ?1 hh_k /volume1/home/hp120263/k00634/neuron_kplus/specials/sparc64/hh_k.mod\n");
 hoc_register_limits(_mechtype, _hoc_parm_limits);
 hoc_register_units(_mechtype, _hoc_parm_units);
 }
 static double *_t_minf;
 static double *_t_mtau;
 static double *_t_hinf;
 static double *_t_htau;
 static double *_t_ninf;
 static double *_t_ntau;
static int _reset;
static char *modelname = "hh_k.mod   squid sodium, potassium, and leak channels";

static int error;
static int _ninits = 0;
static int _match_recurse=1;
static void _modl_cleanup(){ _match_recurse=1;}
static int _f_rates(_threadargsprotocomma_ double);
static int rates(_threadargsprotocomma_ double);
 
static int _ode_spec1(_threadargsproto_);
/*static int _ode_matsol1(_threadargsproto_);*/
 static void _n_rates(_threadargsprotocomma_ double _lv);
 static int _slist1[3], _dlist1[3];
 static int states(_threadargsproto_);
 
/*CVODE*/
 static int _ode_spec1 (double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt) {int _reset = 0; {
   rates ( _threadargscomma_ v ) ;
   Dm = ( minf - m ) / mtau ;
   Dh = ( hinf - h ) / htau ;
   Dn = ( ninf - n ) / ntau ;
   }
 return _reset;
}
 static int _ode_matsol1 (double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt) {
 rates ( _threadargscomma_ v ) ;
 Dm = Dm  / (1. - dt*( ( ( ( - 1.0 ) ) ) / mtau )) ;
 Dh = Dh  / (1. - dt*( ( ( ( - 1.0 ) ) ) / htau )) ;
 Dn = Dn  / (1. - dt*( ( ( ( - 1.0 ) ) ) / ntau )) ;
 return 0;
}
 /*END CVODE*/

static int states (double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt) { {
   rates ( _threadargscomma_ v ) ;
    m = m + (1. - exp(dt*(( ( ( - 1.0 ) ) ) / mtau)))*(- ( ( ( minf ) ) / mtau ) / ( ( ( ( - 1.0) ) ) / mtau ) - m) ;
    h = h + (1. - exp(dt*(( ( ( - 1.0 ) ) ) / htau)))*(- ( ( ( hinf ) ) / htau ) / ( ( ( ( - 1.0) ) ) / htau ) - h) ;
    n = n + (1. - exp(dt*(( ( ( - 1.0 ) ) ) / ntau)))*(- ( ( ( ninf ) ) / ntau ) / ( ( ( ( - 1.0) ) ) / ntau ) - n) ;
   }
  return 0;
}

static double _mfac_rates, _tmin_rates;

static void _check_rates(double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt)
{
  static int _maktable=1; int _i, _j, _ix = 0;
  double _xi, _tmax;
  static double _sav_celsius;
  if (!usetable) {return;}
  if (_sav_celsius != celsius) { _maktable = 1;}
  if (_maktable) { double _x, _dx; _maktable=0;
    _tmin_rates =  - 100.0 ;
    _tmax =  100.0 ;
    _dx = (_tmax - _tmin_rates)/200.; _mfac_rates = 1./_dx;
    for (_i=0, _x=_tmin_rates; _i < 201; _x += _dx, _i++) {
      _f_rates(_p, _ppvar, _thread, _nt, _x);
      _t_minf[_i] = minf;
      _t_mtau[_i] = mtau;
      _t_hinf[_i] = hinf;
      _t_htau[_i] = htau;
      _t_ninf[_i] = ninf;
      _t_ntau[_i] = ntau;

    }
    _sav_celsius = celsius;
  }
}

 static int rates(double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt, double _lv) { 
#if 0
_check_rates(_p, _ppvar, _thread, _nt);
#endif
 _n_rates(_p, _ppvar, _thread, _nt, _lv);
 return 0;
 }

 static void _n_rates(double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt, double _lv){ int _i, _j;
 double _xi, _theta;
 if (!usetable) {
 _f_rates(_p, _ppvar, _thread, _nt, _lv); return; 
}
 _xi = _mfac_rates * (_lv - _tmin_rates);
 _i = (int) _xi;
 if (_xi <= 0.) {
 minf = _t_minf[0];
 mtau = _t_mtau[0];
 hinf = _t_hinf[0];
 htau = _t_htau[0];
 ninf = _t_ninf[0];
 ntau = _t_ntau[0];
 return; }
 if (_i >= 200) {
 minf = _t_minf[200];
 mtau = _t_mtau[200];
 hinf = _t_hinf[200];
 htau = _t_htau[200];
 ninf = _t_ninf[200];
 ntau = _t_ntau[200];
 return; }
 _theta = _xi - (double)_i;
 minf = _t_minf[_i] + _theta*(_t_minf[_i+1] - _t_minf[_i]);
 mtau = _t_mtau[_i] + _theta*(_t_mtau[_i+1] - _t_mtau[_i]);
 hinf = _t_hinf[_i] + _theta*(_t_hinf[_i+1] - _t_hinf[_i]);
 htau = _t_htau[_i] + _theta*(_t_htau[_i+1] - _t_htau[_i]);
 ninf = _t_ninf[_i] + _theta*(_t_ninf[_i+1] - _t_ninf[_i]);
 ntau = _t_ntau[_i] + _theta*(_t_ntau[_i+1] - _t_ntau[_i]);
 }

 
static int  _f_rates ( _threadargsprotocomma_ double _lv ) {
   double _lalpha , _lbeta , _lsum , _lq10 ;
  _lq10 = pow( 3.0 , ( ( celsius - 6.3 ) / 10.0 ) ) ;
   _lalpha = .1 * vtrap ( _threadargscomma_ - ( _lv + 40.0 ) , 10.0 ) ;
   _lbeta = 4.0 * exp ( - ( _lv + 65.0 ) / 18.0 ) ;
   _lsum = _lalpha + _lbeta ;
   mtau = 1.0 / ( _lq10 * _lsum ) ;
   minf = _lalpha / _lsum ;
   _lalpha = .07 * exp ( - ( _lv + 65.0 ) / 20.0 ) ;
   _lbeta = 1.0 / ( exp ( - ( _lv + 35.0 ) / 10.0 ) + 1.0 ) ;
   _lsum = _lalpha + _lbeta ;
   htau = 1.0 / ( _lq10 * _lsum ) ;
   hinf = _lalpha / _lsum ;
   _lalpha = .01 * vtrap ( _threadargscomma_ - ( _lv + 55.0 ) , 10.0 ) ;
   _lbeta = .125 * exp ( - ( _lv + 65.0 ) / 80.0 ) ;
   _lsum = _lalpha + _lbeta ;
   ntau = 1.0 / ( _lq10 * _lsum ) ;
   ninf = _lalpha / _lsum ;
    return 0; }
 
static void _hoc_rates(void) {
  double _r;
   double* _p; Datum* _ppvar; Datum* _thread; _NrnThread* _nt;
   if (_extcall_prop) {_p = _extcall_prop->param; _ppvar = _extcall_prop->dparam;}else{ _p = (double*)0; _ppvar = (Datum*)0; }
  _thread = _extcall_thread;
  _nt = nrn_threads;
 
#if 1
 _check_rates(_p, _ppvar, _thread, _nt);
#endif
 _r = 1.;
 rates ( _p, _ppvar, _thread, _nt, *getarg(1) );
 hoc_retpushx(_r);
}
 
double vtrap ( _threadargsprotocomma_ double _lx , double _ly ) {
   double _lvtrap;
 if ( fabs ( _lx / _ly ) < 1e-6 ) {
     _lvtrap = _ly * ( 1.0 - _lx / _ly / 2.0 ) ;
     }
   else {
     _lvtrap = _lx / ( exp ( _lx / _ly ) - 1.0 ) ;
     }
   
return _lvtrap;
 }
 
static void _hoc_vtrap(void) {
  double _r;
   double* _p; Datum* _ppvar; Datum* _thread; _NrnThread* _nt;
   if (_extcall_prop) {_p = _extcall_prop->param; _ppvar = _extcall_prop->dparam;}else{ _p = (double*)0; _ppvar = (Datum*)0; }
  _thread = _extcall_thread;
  _nt = nrn_threads;
 _r =  vtrap ( _p, _ppvar, _thread, _nt, *getarg(1) , *getarg(2) );
 hoc_retpushx(_r);
}
 
static int _ode_count(int _type){ return 3;}
 
static void _ode_spec(_NrnThread* _nt, _Memb_list* _ml, int _type) {
   double* _p; Datum* _ppvar; Datum* _thread;
   Node* _nd; double _v; int _iml, _cntml;
  _cntml = _ml->_nodecount;
  _thread = _ml->_thread;
  for (_iml = 0; _iml < _cntml; ++_iml) {
    _p = _ml->_data[_iml]; _ppvar = _ml->_pdata[_iml];
    _nd = _ml->_nodelist[_iml];
    v = NODEV(_nd);
  ena = _ion_ena;
  ek = _ion_ek;
     _ode_spec1 (_p, _ppvar, _thread, _nt);
   }}
 
static void _ode_map(int _ieq, double** _pv, double** _pvdot, double* _pp, Datum* _ppd, double* _atol, int _type) { 
	double* _p; Datum* _ppvar;
 	int _i; _p = _pp; _ppvar = _ppd;
	_cvode_ieq = _ieq;
	for (_i=0; _i < 3; ++_i) {
		_pv[_i] = _pp + _slist1[_i];  _pvdot[_i] = _pp + _dlist1[_i];
		_cvode_abstol(_atollist, _atol, _i);
	}
 }
 
static void _ode_matsol(_NrnThread* _nt, _Memb_list* _ml, int _type) {
   double* _p; Datum* _ppvar; Datum* _thread;
   Node* _nd; double _v; int _iml, _cntml;
  _cntml = _ml->_nodecount;
  _thread = _ml->_thread;
  for (_iml = 0; _iml < _cntml; ++_iml) {
    _p = _ml->_data[_iml]; _ppvar = _ml->_pdata[_iml];
    _nd = _ml->_nodelist[_iml];
    v = NODEV(_nd);
  ena = _ion_ena;
  ek = _ion_ek;
 _ode_matsol1 (_p, _ppvar, _thread, _nt);
 }}
 
static void _thread_mem_init(Datum* _thread) {
  if (_thread1data_inuse) {_thread[_gth]._pval = (double*)ecalloc(6, sizeof(double));
 }else{
 _thread[_gth]._pval = _thread1data; _thread1data_inuse = 1;
 }
 }
 
static void _thread_cleanup(Datum* _thread) {
  if (_thread[_gth]._pval == _thread1data) {
   _thread1data_inuse = 0;
  }else{
   free((void*)_thread[_gth]._pval);
  }
 }
 extern void nrn_update_ion_pointer(Symbol*, Datum*, int, int);
 static void _update_ion_pointer(Datum* _ppvar) {
   nrn_update_ion_pointer(_na_sym, _ppvar, 0, 0);
   nrn_update_ion_pointer(_na_sym, _ppvar, 1, 3);
   nrn_update_ion_pointer(_na_sym, _ppvar, 2, 4);
   nrn_update_ion_pointer(_k_sym, _ppvar, 3, 0);
   nrn_update_ion_pointer(_k_sym, _ppvar, 4, 3);
   nrn_update_ion_pointer(_k_sym, _ppvar, 5, 4);
}

/***********************************************************************
#include "../hh_k_core.c"
************************************************************************/
#ifndef __HH_K_CORE__
#define __HH_K_CORE__

#define KPLUS_WITHOUT_SHARED_CURRENT
  //#define RESTRUCT_TABLE

#ifdef ARCH_K
#define BUFFER_SIZE 16000
#define MAX_NTHREADS 8
#else
#define BUFFER_SIZE 160000
#define MAX_NTHREADS 4
#endif


typedef double FLOAT;
#define EXP(x) exp((x))

#undef exp

#ifdef RESTRUCT_TABLE
#define TABLE_SIZE 201
FLOAT hh_table[TABLE_SIZE][6];
#define TABLE_N_TAU(x) hh_table[(x)][0]
#define TABLE_N_INF(x) hh_table[(x)][1]
#define TABLE_M_TAU(x) hh_table[(x)][2]
#define TABLE_M_INF(x) hh_table[(x)][3]
#define TABLE_H_TAU(x) hh_table[(x)][4]
#define TABLE_H_INF(x) hh_table[(x)][5]
#else
#define TABLE_N_TAU(x) _t_ntau[(x)]
#define TABLE_N_INF(x) _t_ninf[(x)]
#define TABLE_M_TAU(x) _t_mtau[(x)]
#define TABLE_M_INF(x) _t_minf[(x)]
#define TABLE_H_TAU(x) _t_htau[(x)]
#define TABLE_H_INF(x) _t_hinf[(x)]

#endif

/********************** NOTE ***********************
#define VEC_D(i) (_nt->_actual_d[(i)])
****************************************************/

static double _m_table[BUFFER_SIZE * MAX_NTHREADS];
static double _h_table[BUFFER_SIZE * MAX_NTHREADS];
static double _n_table[BUFFER_SIZE * MAX_NTHREADS];

  /*
static double *_m_table;
static double *_h_table;
static double *_n_table;
  */

static double _g_table[BUFFER_SIZE * MAX_NTHREADS];

static double _gnabar_table[BUFFER_SIZE * MAX_NTHREADS];
static double _gkbar_table[BUFFER_SIZE * MAX_NTHREADS];

static double _gl_table[BUFFER_SIZE * MAX_NTHREADS];
static double _ena_table[BUFFER_SIZE * MAX_NTHREADS];
static double _ek_table[BUFFER_SIZE * MAX_NTHREADS];
static double _el_table[BUFFER_SIZE * MAX_NTHREADS];
static double _il_table[BUFFER_SIZE * MAX_NTHREADS];

static double _v_table[BUFFER_SIZE * MAX_NTHREADS];

#ifndef KPLUS_WITHOUT_SHARED_CURRENT
static double _gna_table[BUFFER_SIZE * MAX_NTHREADS];
static double _gk_table[BUFFER_SIZE * MAX_NTHREADS];
static double _ina_table[BUFFER_SIZE * MAX_NTHREADS];
static double _ik_table[BUFFER_SIZE * MAX_NTHREADS];
#endif
  /*
static double _rhs_table[BUFFER_SIZE * MAX_NTHREADS];
static double _gna_table[BUFFER_SIZE * MAX_NTHREADS];
static double _gk_table[BUFFER_SIZE * MAX_NTHREADS];
static double _dina_table[BUFFER_SIZE * MAX_NTHREADS];
static double _dik_table[BUFFER_SIZE * MAX_NTHREADS];
static double _ina_table[BUFFER_SIZE * MAX_NTHREADS];
static double _ik_table[BUFFER_SIZE * MAX_NTHREADS];
  */


static void nrn_alloc(Prop* _prop)
{
  Prop *prop_ion;
  double *_p; Datum *_ppvar;
  _p = nrn_prop_data_alloc(_mechtype, 19, _prop);
  /*initialize range parameters*/
  gnabar = 0.12;
  gkbar = 0.036;
  gl = 0.0003;
  el = -54.3;
  _prop->param = _p;
  _prop->param_size = 19;
  _ppvar = nrn_prop_datum_alloc(_mechtype, 7, _prop);
  _prop->dparam = _ppvar;
  /*connect ionic variables to this model*/
  prop_ion = need_memb(_na_sym);
  nrn_promote(prop_ion, 0, 1);
  _ppvar[0]._pval = &prop_ion->param[0]; /* ena */
  _ppvar[1]._pval = &prop_ion->param[3]; /* ina */
  _ppvar[2]._pval = &prop_ion->param[4]; /* _ion_dinadv */
  prop_ion = need_memb(_k_sym);
  nrn_promote(prop_ion, 0, 1);
  _ppvar[3]._pval = &prop_ion->param[0]; /* ek */
  _ppvar[4]._pval = &prop_ion->param[3]; /* ik */
  _ppvar[5]._pval = &prop_ion->param[4]; /* _ion_dikdv */
}

static void initmodel(double* _p, Datum* _ppvar, Datum* _thread, _NrnThread* _nt)
{
  int _i; double _save;
  h = h0;
  m = m0;
  n = n0;
  {
    rates ( _threadargscomma_ v ) ;
    m = minf ;
    h = hinf ;
    n = ninf ;
  }
}

static void nrn_init(_NrnThread* _nt, _Memb_list* _ml, int _type)
{
  double* _p; Datum* _ppvar; Datum* _thread;
  Node *_nd; double _v; int* _ni; int _iml, _cntml;

  /* check condition for kplus*/
#ifndef CACHEVEC
#error
  printf("KPLSU ERROR : CASHEVEC must be enabled\n");
  exit(-1);
#endif
  if(!use_cachevec) {
    printf("KPLSU ERROR : use_cachevec must be enabled\n");
    exit(-1);
  }
  if(!usetable) {
    printf("KPLSU ERROR : usetable must be enabled\n");
    exit(-1);
  }

  _ni = _ml->_nodeindices;
  _cntml = _ml->_nodecount;
  _thread = _ml->_thread;

  // initialize m,h,n
  //_m_table = (double *)malloc(BUFFER_SIZE * MAX_NTHREADS * sizeof(double) * 3);
  //_h_table = _m_table + (BUFFER_SIZE * MAX_NTHREADS);
  //_n_table = _h_table + (BUFFER_SIZE * MAX_NTHREADS);
  //_h_table = (double *)malloc(BUFFER_SIZE * MAX_NTHREADS * sizeof(double));
  //_n_table = (double *)malloc(BUFFER_SIZE * MAX_NTHREADS * sizeof(double));
  //printf("allocate memory\n");

  double *m_table = &(_m_table[BUFFER_SIZE * _nt->_id]);
  double *h_table = &(_h_table[BUFFER_SIZE * _nt->_id]);
  double *n_table = &(_n_table[BUFFER_SIZE * _nt->_id]);
  double *v_table = &(_v_table[BUFFER_SIZE * _nt->_id]);
  double *g_table   = &(_g_table[BUFFER_SIZE * _nt->_id]);
  double *gnabar_table = &(_gnabar_table[BUFFER_SIZE * _nt->_id]);
  double *gkbar_table = &(_gkbar_table[BUFFER_SIZE * _nt->_id]);
  double *gl_table  = &(_gl_table[BUFFER_SIZE * _nt->_id]);
  double *il_table  = &(_il_table[BUFFER_SIZE * _nt->_id]);
  double *ena_table = &(_ena_table[BUFFER_SIZE * _nt->_id]);
  double *ek_table  = &(_ek_table[BUFFER_SIZE * _nt->_id]);
  double *el_table  = &(_el_table[BUFFER_SIZE * _nt->_id]);

  for (_iml = 0; _iml < _cntml; ++_iml) {
    _p = _ml->_data[_iml];
    _ppvar = _ml->_pdata[_iml];

    _v = VEC_V(_ni[_iml]);
    v = _v;
    ena = _ion_ena;
    ek = _ion_ek;

    initmodel(_p, _ppvar, _thread, _nt);

    // initialize m,h,n
    m_table[_iml] = m;
    h_table[_iml] = h;
    n_table[_iml] = n;
    v_table[_iml] = v;
    gnabar_table[_iml] = gnabar;
    gkbar_table[_iml] = gkbar;

    gl_table[_iml] = gl;
    ena_table[_iml] = _ion_ena;
    ek_table[_iml] = _ion_ek;
    el_table[_iml] = el;
  }

#ifdef RESTRUCT_TABLE
  for (_iml = 0; _iml<TABLE_SIZE; _iml++){
    TABLE_N_TAU(_iml) = _t_ntau[_iml];
    TABLE_N_INF(_iml) = _t_ninf[_iml];
    TABLE_M_TAU(_iml) = _t_mtau[_iml];
    TABLE_M_INF(_iml) = _t_minf[_iml];
    TABLE_H_TAU(_iml) = _t_htau[_iml];
    TABLE_H_INF(_iml) = _t_hinf[_iml];
  }
#endif
}


static void nrn_cur(_NrnThread* _nt, _Memb_list* _ml, int _type)
{
  Datum* _thread;
  Node *_nd;
  int* _ni;
  int _iml, _cntml;


#ifdef KPLUS_USE_FAPP_RANGE
  fapp_start("nrn_cur", 31, 4);
#endif

  _ni = _ml->_nodeindices;
  _cntml = _ml->_nodecount;
  _thread = _ml->_thread;

  const double *m_table = &(_m_table[BUFFER_SIZE * _nt->_id]);
  const double *h_table = &(_h_table[BUFFER_SIZE * _nt->_id]);
  const double *n_table = &(_n_table[BUFFER_SIZE * _nt->_id]);
  double *v_table = &(_v_table[BUFFER_SIZE * _nt->_id]);
  double *g_table   = &(_g_table[BUFFER_SIZE * _nt->_id]);
  const double *gnabar_table = &(_gnabar_table[BUFFER_SIZE * _nt->_id]);
  const double *gkbar_table = &(_gkbar_table[BUFFER_SIZE * _nt->_id]);
  const double *gl_table  = &(_gl_table[BUFFER_SIZE * _nt->_id]);
  double *il_table  = &(_il_table[BUFFER_SIZE * _nt->_id]);
  const double *ena_table = &(_ena_table[BUFFER_SIZE * _nt->_id]);
  const double *ek_table  = &(_ek_table[BUFFER_SIZE * _nt->_id]);
  const double *el_table  = &(_el_table[BUFFER_SIZE * _nt->_id]);

#ifndef KPLUS_WITHOUT_SHARED_CURRENT
  double *gna_table = &(_gna_table[BUFFER_SIZE * _nt->_id]);
  double *gk_table  = &(_gk_table[BUFFER_SIZE * _nt->_id]);
  double *ina_table = &(_ina_table[BUFFER_SIZE * _nt->_id]);
  double *ik_table  = &(_ik_table[BUFFER_SIZE * _nt->_id]);
#endif

  const double *vec_v = _nt->_actual_v;
  double *vec_rhs = _nt->_actual_rhs;

  //int div_iml=0,local_iml;
  //for(div_iml=0, _iml=0; (div_iml+DIV_BUFFER_SIZE)<_cntml; div_iml+=DIV_BUFFER_SIZE) {
  //for (_iml = div_iml, local_iml=0; _iml<div_iml+DIV_BUFFER_SIZE; ++_iml, ++local_iml) {


#ifdef KPLUS_WITHOUT_SHARED_CURRENT
#ifdef KPLUS_USE_MOD_OMP
#pragma omp parallel
#endif
  {

#ifdef KPLUS_USE_MOD_OMP
#pragma omp for
#endif
#pragma loop noalias
#pragma loop norecurrence
  for(_iml=0; _iml<_cntml; _iml++){
    v_table[_iml] = vec_v[_ni[_iml]];
  }

#ifdef KPLUS_USE_MOD_OMP
#pragma omp for
#endif
#pragma loop noalias
#pragma loop norecurrence
  for(_iml=0; _iml<_cntml; _iml++){
    double _gna, _gk, _ina, _ik;
    _gna = gnabar_table[_iml] * m_table[_iml] * m_table[_iml] * m_table[_iml] * h_table[_iml];
    _gk = gkbar_table[_iml] * n_table[_iml] * n_table[_iml] * n_table[_iml] * n_table[_iml];
    g_table[_iml] = _gna + _gk + gl_table[_iml];

    _ina = _gna * (v_table[_iml] - ena_table[_iml]);
    _ik = _gk * (v_table[_iml] - ek_table[_iml]);
    il_table[_iml] = gl_table[_iml] * (v_table[_iml] - el_table[_iml]) + _ina + _ik;
  }

#ifdef KPLUS_USE_MOD_OMP
#pragma omp for
#endif
  for(_iml=0; _iml<_cntml; _iml++){
    vec_rhs[_ni[_iml]] -= il_table[_iml];
  }

  }
#else
  for(_iml=0; _iml<_cntml; ++_iml){
    v_table[_iml] = vec_v[_ni[_iml]];
  }
  for(_iml=0; _iml<_cntml; ++_iml){
    gna_table[_iml]
      = gnabar_table[_iml] * m_table[_iml] * m_table[_iml] * m_table[_iml] * h_table[_iml];
    gk_table[_iml] 
      = gkbar_table[_iml] * n_table[_iml] * n_table[_iml] * n_table[_iml] * n_table[_iml];
    g_table[_iml] = gna_table[_iml] + gk_table[_iml] + gl_table[_iml];
  }
  for(_iml=0; _iml<_cntml; ++_iml){
    ina_table[_iml] = gna_table[_iml] * (v_table[_iml] - ena_table[_iml]);
    ik_table[_iml]  = gk_table[_iml] * (v_table[_iml] - ek_table[_iml]);
    il_table[_iml] = gl_table[_iml] * (v_table[_iml] - el_table[_iml]);
    il_table[_iml] += ina_table[_iml] + ik_table[_iml];
  }
  for(_iml=0; _iml<_cntml; ++_iml){
    vec_rhs[_ni[_iml]] -= il_table[_iml];
  }
      
  for(_iml=0; _iml<_cntml; ++_iml){
    double* _p = _ml->_data[_iml];
    Datum* _ppvar = _ml->_pdata[_iml];
    _ion_dinadv += gna_table[_iml]; // pp
    _ion_dikdv  += gk_table[_iml];  // pp
    _ion_ina    += ina_table[_iml]; // pp
    _ion_ik     += ik_table[_iml];  // pp
  }
#endif

#ifdef KPLUS_USE_FAPP_RANGE
  fapp_stop("nrn_cur", 31, 4);
#endif
}


static void nrn_jacob(_NrnThread* _nt, _Memb_list* _ml, int _type)
{
  double* _p; Datum* _ppvar; Datum* _thread;
  Node *_nd; int* _ni; int _iml, _cntml;

  _ni = _ml->_nodeindices;  
  _cntml = _ml->_nodecount;
  _thread = _ml->_thread;

  double *vec_d = _nt->_actual_d;
  double *g_table = &(_g_table[BUFFER_SIZE * _nt->_id]);

#ifdef KPLUS_USE_MOD_OMP
#pragma omp parallel for
#endif
  for (_iml = 0; _iml < _cntml; ++_iml) {
    vec_d[_ni[_iml]] += g_table[_iml];
  }
}


static void nrn_state(_NrnThread* _nt, _Memb_list* _ml, int _type)
{
  Datum* _thread;
  int* _ni;
  int _iml, _cntml;
  double local_dt = dt;

  //static double inftau_table[BUFFER_SIZE*6]; // 6 = {minf, mtau, hinf, htau, ninf, ntau}
  //double inf_table[BUFFER_SIZE];
  //double tau_table[BUFFER_SIZE];
  double _theta_table[BUFFER_SIZE];
  int _i_table[BUFFER_SIZE];

  //static double mhn_table[BUFFER_SIZE*3]; // 3 = {m, h, n}

  static double local_mfac_rates;
  static double local_tmin_rates;

  double *m_table = &(_m_table[BUFFER_SIZE * _nt->_id]);
  double *h_table = &(_h_table[BUFFER_SIZE * _nt->_id]);
  double *n_table = &(_n_table[BUFFER_SIZE * _nt->_id]);
  const double *v_table = &(_v_table[BUFFER_SIZE * _nt->_id]);
  const double *g_table   = &(_g_table[BUFFER_SIZE * _nt->_id]);
  const double *gnabar_table = &(_gnabar_table[BUFFER_SIZE * _nt->_id]);
  const double *gkbar_table = &(_gkbar_table[BUFFER_SIZE * _nt->_id]);
  const double *gl_table  = &(_gl_table[BUFFER_SIZE * _nt->_id]);
  const double *il_table  = &(_il_table[BUFFER_SIZE * _nt->_id]);
  const double *ena_table = &(_ena_table[BUFFER_SIZE * _nt->_id]);
  const double *ek_table  = &(_ek_table[BUFFER_SIZE * _nt->_id]);
  const double *el_table  = &(_el_table[BUFFER_SIZE * _nt->_id]);


  _ni = _ml->_nodeindices;
  _cntml = _ml->_nodecount;
  _thread = _ml->_thread;

  if(_cntml > BUFFER_SIZE){
    printf("KPLSU ERROR : Compartment size (%d) is larger Buffer (%d)\n", _cntml, BUFFER_SIZE);
    exit(-1);    
  }

  local_mfac_rates = _mfac_rates;
  local_tmin_rates = _tmin_rates;


  double *vec_v = _nt->_actual_v;
  //int div_iml=0,local_iml;
  //for(div_iml=0, _iml=0; (div_iml+DIV_BUFFER_SIZE)<_cntml; div_iml+=DIV_BUFFER_SIZE) {


#ifdef KPLUS_USE_MOD_OMP
#pragma omp parallel
#endif
  {

#ifdef KPLUS_USE_MOD_OMP
#pragma omp for
#endif
#pragma loop noalias
#pragma loop norecurrence
  for (_iml = 0; _iml < _cntml; _iml++){
    double _v = vec_v[_ni[_iml]];    
    _i_table[_iml] = (int)(_v - local_tmin_rates);
    _theta_table[_iml] = (_v - local_tmin_rates) - (FLOAT)_i_table[_iml];
    //v_table[_iml] = _v;
  }

#ifdef KPLUS_USE_MOD_OMP
#pragma omp for
#endif
#pragma loop noalias
#pragma loop norecurrence
  for (_iml = 0; _iml < _cntml; _iml++){
    if( ! ( _i_table[_iml] >= 200 || _i_table[_iml] < 0.0 ) ){
      ;
    }else if(_i_table[_iml] >= 200){
      _theta_table[_iml] = 1.0; _i_table[_iml] = 199;
    }else if(_i_table[_iml] < 0.0){
      _theta_table[_iml] = 0.0; _i_table[_iml] = 0;
    }
  }

#ifdef KPLUS_USE_MOD_OMP
#pragma omp for
#endif
#pragma loop noalias
#pragma loop norecurrence
  for (_iml = 0; _iml < _cntml; _iml++){
    FLOAT tau_n, n_inf, tau_m, m_inf, tau_h, h_inf;
    int v_i = _i_table[_iml];
    FLOAT theta = _theta_table[_iml];

    tau_n = TABLE_N_TAU(v_i);
    n_inf = TABLE_N_INF(v_i);
    tau_m = TABLE_M_TAU(v_i);
    m_inf = TABLE_M_INF(v_i);
    tau_h = TABLE_H_TAU(v_i);
    h_inf = TABLE_H_INF(v_i);
    /*
    tau_n = (tau_n + theta * (TABLE_N_TAU(v_i+1) - tau_n));
    tau_m = (tau_m + theta * (TABLE_M_TAU(v_i+1) - tau_m));
    tau_h = (tau_h + theta * (TABLE_H_TAU(v_i+1) - tau_h));
    n_inf = n_inf + theta * (TABLE_N_INF(v_i+1) - n_inf) - n_table[_iml];
    m_inf = m_inf + theta * (TABLE_M_INF(v_i+1) - m_inf) - m_table[_iml];
    h_inf = h_inf + theta * (TABLE_H_INF(v_i+1) - h_inf) - h_table[_iml];

    n_table[_iml] += (1.0f - EXP(-local_dt/tau_n)) * n_inf;
    m_table[_iml] += (1.0f - EXP(-local_dt/tau_m)) * m_inf;
    h_table[_iml] += (1.0f - EXP(-local_dt/tau_h)) * h_inf;
    */
    n_table[_iml] += (1.0f - EXP(-local_dt/tau_n)) * (n_inf + theta * (TABLE_N_INF(v_i+1) - n_inf) - n_table[_iml]);
    m_table[_iml] += (1.0f - EXP(-local_dt/tau_m)) * (m_inf + theta * (TABLE_M_INF(v_i+1) - m_inf) - m_table[_iml]);
    h_table[_iml] += (1.0f - EXP(-local_dt/tau_h)) * (h_inf + theta * (TABLE_H_INF(v_i+1) - h_inf) - h_table[_iml]);
  }
  
  }
}


#define exp hoc_Exp

static terminal(){}

static _initlists(){
  double _x; double* _p = &_x;
  int _i; static int _first = 1;
  if (!_first) return;
  _slist1[0] = &(m) - _p;  _dlist1[0] = &(Dm) - _p;
  _slist1[1] = &(h) - _p;  _dlist1[1] = &(Dh) - _p;
  _slist1[2] = &(n) - _p;  _dlist1[2] = &(Dn) - _p;
  _t_minf = makevector(201*sizeof(double));
  _t_mtau = makevector(201*sizeof(double));
  _t_hinf = makevector(201*sizeof(double));
  _t_htau = makevector(201*sizeof(double));
  _t_ninf = makevector(201*sizeof(double));
  _t_ntau = makevector(201*sizeof(double));

  _first = 0;

}


#endif


#if defined(__cplusplus)
} /* extern "C" */
#endif
