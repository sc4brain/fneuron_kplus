#!/bin/bash -x

ARCH=sparc64

rm -r ${ARCH}
../exec/${ARCH}/bin/nrnivmodl  ../mod
rm ./${ARCH}/hh_k.c
rm ./${ARCH}/hh_merge.c
rm ./${ARCH}/hh_cnexp.c
cp hh_cnexp.c ./${ARCH}/hh_cnexp.c
cp ./exp2syn_k7_2.c ${ARCH}/exp2syn_k.c
cp ./myhh_k7_2.c ${ARCH}/hh_k.c
cp ./hh_merge.c ${ARCH}/hh_merge.c
../exec/${ARCH}/bin/nrnivmodl ../mod
