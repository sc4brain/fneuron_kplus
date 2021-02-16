#ifndef __HH_K_CORE__
#define __HH_K_CORE__

#ifdef ARCH_K
#define BUFFER_SIZE 10000
#define MAX_NTHREADS 16
#define DIV_BUFFER_SIZE 500
#else
#define BUFFER_SIZE 160000
#define MAX_NTHREADS 4
#define DIV_BUFFER_SIZE 1000
#endif

#undef exp

/********************** NOTE ***********************
#define VEC_D(i) (_nt->_actual_d[(i)])
****************************************************/

#define KPLUS_WITHOUT_SHARED_CURRENT

static double _m_table[BUFFER_SIZE * MAX_NTHREADS];
static double _h_table[BUFFER_SIZE * MAX_NTHREADS];
static double _n_table[BUFFER_SIZE * MAX_NTHREADS];

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
  double *m_table = &(_m_table[BUFFER_SIZE * _nt->_id]);
  double *h_table = &(_h_table[BUFFER_SIZE * _nt->_id]);
  double *n_table = &(_n_table[BUFFER_SIZE * _nt->_id]);
  double *gnabar_table = &(_gnabar_table[BUFFER_SIZE * _nt->_id]);
  double *gkbar_table = &(_gkbar_table[BUFFER_SIZE * _nt->_id]);
  double *gl_table  = &(_gl_table[BUFFER_SIZE * _nt->_id]);
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
    gnabar_table[_iml] = gnabar;
    gkbar_table[_iml] = gkbar;

    gl_table[_iml] = gl;
    ena_table[_iml] = _ion_ena;
    ek_table[_iml] = _ion_ek;
    el_table[_iml] = el;
  }
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

#ifndef KPLUS_WITHOUT_SHARED_CURRENT
  double *gna_table = &(_gna_table[BUFFER_SIZE * _nt->_id]);
  double *gk_table  = &(_gk_table[BUFFER_SIZE * _nt->_id]);
  double *ina_table = &(_ina_table[BUFFER_SIZE * _nt->_id]);
  double *ik_table  = &(_ik_table[BUFFER_SIZE * _nt->_id]);
#endif

  double *vec_v = _nt->_actual_v;
  double *vec_rhs = _nt->_actual_rhs;

  //int div_iml=0,local_iml;
  //for(div_iml=0, _iml=0; (div_iml+DIV_BUFFER_SIZE)<_cntml; div_iml+=DIV_BUFFER_SIZE) {

  //for (_iml = div_iml, local_iml=0; _iml<div_iml+DIV_BUFFER_SIZE; ++_iml, ++local_iml) {

  for(_iml=0; _iml<_cntml; ++_iml){
    v_table[_iml] = vec_v[_ni[_iml]];
  }

#ifdef KPLUS_WITHOUT_SHARED_CURRENT
  for(_iml=0; _iml<_cntml; ++_iml){
    double _gna, _gk, _ina, _ik;
    _gna = gnabar_table[_iml] * m_table[_iml] * m_table[_iml] * m_table[_iml] * h_table[_iml];
    _gk = gkbar_table[_iml] * n_table[_iml] * n_table[_iml] * n_table[_iml] * n_table[_iml];
    g_table[_iml] = _gna + _gk + gl_table[_iml];
    _ina = _gna * (v_table[_iml] - ena_table[_iml]);
    _ik = _gk * (v_table[_iml] - ek_table[_iml]);
    il_table[_iml] = gl_table[_iml] * (v_table[_iml] - el_table[_iml]);
    il_table[_iml] += _ina + _ik;
  }
  for(_iml=0; _iml<_cntml; ++_iml){
    vec_rhs[_ni[_iml]] -= il_table[_iml];
  }
#else
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
  double inf_table[BUFFER_SIZE];
  double tau_table[BUFFER_SIZE];
  double _theta_table[BUFFER_SIZE];
  int _i_table[BUFFER_SIZE];

  //static double mhn_table[BUFFER_SIZE*3]; // 3 = {m, h, n}

  static double local_mfac_rates;
  static double local_tmin_rates;

  double *m_table = &(_m_table[BUFFER_SIZE * _nt->_id]);
  double *h_table = &(_h_table[BUFFER_SIZE * _nt->_id]);
  double *n_table = &(_n_table[BUFFER_SIZE * _nt->_id]);


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

  for (_iml = 0; _iml < _cntml; _iml++){
    double* _p = _ml->_data[_iml];
      Datum* _ppvar = _ml->_pdata[_iml];
      Node *_nd = _ml->_nodelist[_iml];
      double _v = vec_v[_ni[_iml]];
      double _xi;

      _xi = local_mfac_rates * (_v - local_tmin_rates);
      _i_table[_iml] = (int) _xi;
      _theta_table[_iml] = _xi - (double)_i_table[_iml];

      if(_i_table[_iml] >= 200){
	_theta_table[_iml] = 1.0; _i_table[_iml] = 199;
      }else if(_xi < 0.0){
	_theta_table[_iml] = 0.0; _i_table[_iml] = 0;
      }
  }

  // m
  for (_iml = 0; _iml < _cntml; _iml++){
      inf_table[_iml] = _t_minf[_i_table[_iml]] 
	+ _theta_table[_iml]*(_t_minf[_i_table[_iml]+1] - _t_minf[_i_table[_iml]]);
  }
  for (_iml = 0; _iml < _cntml; _iml++){
      tau_table[_iml] = _t_mtau[_i_table[_iml]]
	+ _theta_table[_iml]*(_t_mtau[_i_table[_iml]+1] - _t_mtau[_i_table[_iml]]);
  }
  for (_iml = 0; _iml < _cntml; _iml++){
      m_table[_iml] += (1.0 - exp(-local_dt/tau_table[_iml]) ) * (inf_table[_iml] - m_table[_iml]);
  }

  // h
  for (_iml = 0; _iml < _cntml; _iml++){
      inf_table[_iml] = _t_hinf[_i_table[_iml]] 
	+ _theta_table[_iml]*(_t_hinf[_i_table[_iml]+1] - _t_hinf[_i_table[_iml]]);
  }
  for (_iml = 0; _iml < _cntml; _iml++){
      tau_table[_iml] = _t_htau[_i_table[_iml]] 
	+ _theta_table[_iml]*(_t_htau[_i_table[_iml]+1] - _t_htau[_i_table[_iml]]);
  }
  for (_iml = 0; _iml < _cntml; _iml++){
      h_table[_iml] += (1.0 - exp(-local_dt/tau_table[_iml]) ) * (inf_table[_iml] - h_table[_iml]);
  }

  // n
  for (_iml = 0; _iml < _cntml; _iml++){
      inf_table[_iml] = _t_ninf[_i_table[_iml]] 
	+ _theta_table[_iml]*(_t_ninf[_i_table[_iml]+1] - _t_ninf[_i_table[_iml]]);
  }
  for (_iml = 0; _iml < _cntml; _iml++){
      tau_table[_iml] = _t_ntau[_i_table[_iml]] 
	+ _theta_table[_iml]*(_t_ntau[_i_table[_iml]+1] - _t_ntau[_i_table[_iml]]);
  }
  for (_iml = 0; _iml < _cntml; _iml++){
      n_table[_iml] += (1.0 - exp(-local_dt/tau_table[_iml]) ) * (inf_table[_iml] - n_table[_iml]);
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


/***********************************************************************
 end of #include "../hh_k_core.c"
************************************************************************/

#endif

