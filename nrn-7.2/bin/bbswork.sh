#!/bin/sh

prefix=/home/hp200177/u00688/tsimulation_neuron/exec
exec_prefix=/home/hp200177/u00688/tsimulation_neuron/exec/sparc64
NRNBIN=${exec_prefix}/bin
ARCH=sparc64
NEURONHOME=/home/hp200177/u00688/tsimulation_neuron/exec/share/nrn

cd $1

if [ -x ${ARCH}/special ] ; then
	program="./${ARCH}/special"
else
	program="${NRNBIN}/nrniv"
fi

hostname
pwd
shift
shift
echo "time $program $*"
time $program $*

