#!/bin/bash -x
#PJM --rsc-list "node=1"
#PJM --rsc-list "rscunit=rscunit_ft02"
#PJM --rsc-list "rscgrp=gb1-10"
#PJM -s

# staging

export OMP_NUM_THREADS=1

NRNIV=" /home/users/go22/go0020/neuron_kplus/specials/sparc64/special -mpi"
HOC_NAME="./bench_main.hoc"
NRNOPT=\
" -c MODEL=2"\
" -c NSTIM_POS=1"\
" -c NSTIM_NUM=1"\
" -c NCELLS=1"\
" -c NSYNAPSE=1"\
" -c SYNAPSE_RANGE=1"\
" -c NETWORK=0"\
" -c STOPTIME=1000"\
" -c NTHREAD=1"\
" -c MULTISPLIT=0"\
" -c SPIKE_COMPRESS=0"\
" -c CACHE_EFFICIENT=1"\
" -c SHOW_SPIKE=1"

#LPG="lpgparm -t 4MB -s 4MB -d 4MB -h 4MB -p 4MB"
MPIEXEC="mpiexec -mca mpi_print_stats 1"
#MPIEXEC="mpiexec -mca mpi_print_stats 2 -mca mpi_print_stats_ranks 0"

PROF="fapp -C -d ./proffapp -L4 -Hevent=Statistics"
#PROF="fipp -C -Ihwm,call -d ./prof"
#PROF=""

echo "${PROF} ${MPIEXEC} ${LPG} ${NRNIV} ${NRNOPT} ${HOC_NAME}"
time ${PROF} ${MPIEXEC} ${LPG} ${NRNIV} ${NRNOPT} ${HOC_NAME}

sync


