#!/bin/bash -x
#PJM --rsc-list "node=1"
#PJM --rsc-list "elapse=00:10:00"
#PJM --rsc-list "rscgrp=short"
#PJM --mpi "proc=16"
#PJM -s

# staging
#PJM --stg-transfiles all
#PJM --mpi "use-rankdir"

# CHANGE TO YOUR OWN DIR
#PJM --stgin-basedir /home/e16003/WORK/neuron_kplus

#PJM --stgin "rank=* ./exec/sparc64/bin/nrniv %r:./"
#PJM --stgin "rank=* ./hoc/* %r:./"

. /work/system/Env_base

NRNIV="./nrniv -mpi"

HOC_NAME1="./test_gather.hoc"
HOC_NAME2="./test_scatter.hoc"

MPIEXEC="mpiexec -mca mpi_print_stats 1"
#MPIEXEC="mpiexec -mca mpi_print_stats 2 -mca mpi_print_stats_ranks 0"

#PROF="fapp -C -d ./prof -L1 -Hevent=Statistics"
#PROF="fipp -C -Ihwm,call -d ./prof"

echo "${MPIEXEC} ${NRNIV} ${HOC_NAME1}"
time ${MPIEXEC} ${NRNIV} ${HOC_NAME1}

echo "${MPIEXEC} ${NRNIV} ${HOC_NAME2}"
time ${MPIEXEC} ${NRNIV} ${HOC_NAME2}

sync


