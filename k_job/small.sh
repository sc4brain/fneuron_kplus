#!/bin/bash 
#PJM --rsc-list "node=4:noncont"
#PJM --rsc-list "elapse=5:00"
#PJM --rsc-list "rscunit=rscunit_ft02"
#PJM --rsc-list "rscgrp=gb4-10"
#PJM --mpi "proc=32"
#PJM -S

# staging
#PJM --stg-transfiles all
#PJM --mpi "use-rankdir"

# CHANGE TO YOUR OWN DIR
#PJM --stgin-basedir /home/go0020/neuron_kplus

#--PJM --stgout "rank=* %r:./prof/* /home/go0020/result/prof/%j/"

#PJM --stgin "rank=* ./stgin/* %r:./"
#PJM --stgin "rank=* ./specials/arm/special %r:./"
#PJM --stgin "rank=* ./hoc/* %r:./"

module load lang
#export PLE_MPI_PIN_CELL=core
#export PLE_MPI_PIN_ORDER=scatter
export OMP_WAIT_POLICY=ACTIVE
export OMP_NUM_THREADS=6

export PARALLEL=6

NRNIV=" /home/users/go22/go0020/neuron_kplus/specials/sparc64/special -mpi"
HOC_NAME="./bench_main.hoc"
NRNOPT=\
" -c MODEL=2"\
" -c NSTIM_POS=1"\
" -c NSTIM_NUM=400"\
" -c NCELLS=32"\
" -c NSYNAPSE=10"\
" -c SYNAPSE_RANGE=1"\
" -c NETWORK=1"\
" -c STOPTIME=2000"\
" -c NTHREAD=1"\
" -c MULTISPLIT=0"\
" -c SPIKE_COMPRESS=0"\
" -c CACHE_EFFICIENT=1"\
" -c SHOW_SPIKE=1"
LPG=""
#LPG="lpgparm -t 4MB -s 4MB -d 4MB -h 4MB -p 4MB"
MPIEXEC="mpiexec -mca mpi_print_stats 1"
#MPIEXEC="mpiexec -mca mpi_print_stats 2 -mca mpi_print_stats_ranks 0"
MPIEXEC="mpiexec"
#PROF="fapp -C -d ./prof -L1 -Hevent=Statistics"
#PROF="fipp -C -Ihwm,call -d ./prof"
#PROF="fipp -C -d prof-bk-nrn-strong-jam-rh-eion-cp-sp4-4 -Icpupa,call"
PROF=""
echo "${PROF} ${MPIEXEC} ${LPG} ${NRNIV} ${NRNOPT} ${HOC_NAME}"
time ${PROF} ${MPIEXEC} ${LPG} ${NRNIV} ${NRNOPT} ${HOC_NAME}

sync


