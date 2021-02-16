#!/bin/bash

export OMP_NUM_THREADS=1

NRNIV="../specials/x86_64/special -mpi"
HOC_NAME="../hoc/bench_main.hoc"

NRNOPT=\
" -c MODEL=2"\
" -c NSTIM_POS=1"\
" -c NSTIM_NUM=1"\
" -c NCELLS=32"\
" -c NSYNAPSE=1"\
" -c SYNAPSE_RANGE=1"\
" -c NETWORK=0"\
" -c STOPTIME=100"\
" -c NTHREAD=1"\
" -c MULTISPLIT=0"\
" -c SPIKE_COMPRESS=0"\
" -c CACHE_EFFICIENT=1"\
" -c SHOW_SPIKE=1"

MPIEXEC="mpiexec -n 1"

OUTPUT_FILE="../log/r$(date +%Y%m%d%H%M%S).log"

EXEC="${MPIEXEC} ${NRNIV} ${NRNOPT} ${HOC_NAME}"
echo $EXEC > ${OUTPUT_FILE}

time $EXEC | tee -a ${OUTPUT_FILE} 2>&1

gprof ${NRNIV} ./gmon.out >> ${OUTPUT_FILE}

echo "OUTPUT_FILE = ${OUTPUT_FILE}"

sync


