#!/bin/bash -x

ARCH=x86_64

rm -r ${ARCH}
../exec/${ARCH}/bin/nrnivmodl ../mod
rm ./${ARCH}/hh_k.c
cp ./hh_k7_3.c ${ARCH}/hh_k.c
../exec/${ARCH}/bin/nrnivmodl ../mod
