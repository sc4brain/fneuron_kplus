#!/bin/bash

./configure --prefix=$(cd ../; pwd)/exec/                             \
    --without-x --without-nmodl                                       \
    --without-nrnoc-x11 --without-x                                   \
    --host=sparc64-unknown-linux-gnu --build=x86_64-unknown-linux-gnu \
    --enable-shared=no --enable-static=yes                            \
    --with-paranrn --with-mpi --with-multisend                        \
    linux_nrnmech=no use_pthread=no                                   \
    CC=mpifccpx CXX=mpiFCCpx MPICC=mpifccpx MPICXX=mpiFCCpx           \
    CFLAGS="-O2 -DKPLUS_USE_FIPP_RANGE"                    \
    CXXFLAGS="-O2 -DKPLUS_USE_FIPP_RANGE"; \

