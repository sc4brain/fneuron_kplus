#!/bin/bash -x
#PJM --rsc-list "node=1"
#PJM --rsc-list "elapse=01:00:00"
#PJM --rsc-list "rscgrp=small"
#PJM -s

# staging
#PJM --stg-transfiles all
#PJM --mpi "use-rankdir"

# CHANGE TO YOUR OWN DIR
#PJM --stgin-basedir /home/hp120263/k00634/neuron_kplus

#PJM --stgout "rank=* %r:./prof/* /data/hp120263/k00634/result/prof/model/%j/"

#PJM --stgin "rank=* ./stgin/* %r:./"
#PJM --stgin "rank=* ./specials/sparc64/special %r:./"
#PJM --stgin "rank=* ./hoc/* %r:./"


. /work/system/Env_base

export OMP_NUM_THREADS=1

NRNIV="./special -mpi"
HOC_NAME="./bench_main.hoc"
NRNOPT=\
" -c MODEL=5"\
" -c NSTIM_POS=1"\
" -c NSTIM_NUM=1"\
" -c NCELLS=2"\
" -c NSYNAPSE=1"\
" -c SYNAPSE_RANGE=1"\
" -c NETWORK=0"\
" -c STOPTIME=1000"\
" -c NTHREAD=1"\
" -c MULTISPLIT=0"\
" -c SPIKE_COMPRESS=0"\
" -c CACHE_EFFICIENT=1"\
" -c SHOW_SPIKE=1"

LPG="lpgparm -t 4MB -s 4MB -d 4MB -h 4MB -p 4MB"
MPIEXEC="mpiexec -mca mpi_print_stats 1"
#MPIEXEC="mpiexec -mca mpi_print_stats 2 -mca mpi_print_stats_ranks 0"

PROF="fapp -C -d ./prof -L1 -Hevent=Statistics"
#PROF="fipp -C -Ihwm,call -d ./prof"
#PROF=""

echo "${PROF} ${MPIEXEC} ${LPG} ${NRNIV} ${NRNOPT} ${HOC_NAME}"
time ${PROF} ${MPIEXEC} ${LPG} ${NRNIV} ${NRNOPT} ${HOC_NAME}

sync


