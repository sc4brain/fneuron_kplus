#!/bin/bash

FLAGS="-Kfast,mfunc=2,restp=all,eval,lib,preex,parallel,preload,loop_fission_stripmining,simd_uncounted_loop,openmp,ocl,optmsg=2,swp_strong,unroll_and_jam,optlib_string,prefetch_indirect,rdconv=2,alias_const,prefetch_conditional"\
" -Nrt_tune,src,sta  -Nlibomp"\
" -DKPLUS -DKPLUS_FADVANCE"\
"   -DKPLUS_USE_MOD_OMP"\
" -DKPLUS_USE_FAPP_RANGE -DKPLUS_USE_FIPP_RANGE"\
" -DKPLUS_GATHER_SCATTER -DKPLUS_SPAWN"\
" -DARCH_K -DKPLUS_SOLVE -DKPLUS_TREESET -DKPLUS_CAP_JACOB -DKPLUS_EION -DKPLUS_SOLVE -I/opt/FJSVtcs/pwrm/aarch64/include -lpwr"\

#" -DKPLUS_DEBUG_MPISPIKE"\
#" -DKPLUS_USE_MOD_OMP"\

./configure --prefix=$(cd ../; pwd)/exec/                             \
    --without-x --without-nmodl                                       \
    --without-nrnoc-x11 --without-x                                   \
    --host=sparc64-unknown-linux-gnu --build=x86_64-unknown-linux-gnu \
    --enable-shared=no --enable-static=yes                            \
    --with-paranrn --with-mpi --with-multisend                        \
    linux_nrnmech=no use_pthread=no                                   \
    CC=mpifccpx CXX=mpiFCCpx MPICC=mpifccpx MPICXX=mpiFCCpx           \
    CFLAGS="${FLAGS}" \
    CXXFLAGS="${FLAGS} -std=c++11" \
    LDFLAGS=" -Kopenmp -Nlibomp -L/opt/FJSVtcs/pwrm/aarch64/lib64" \


