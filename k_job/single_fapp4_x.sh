#!/bin/bash -x
#PJM --rsc-list "node=4:noncont"
#PJM --rsc-list "rscunit=rscunit_ft02"
#PJM --rsc-list "rscgrp=gb4-10"
#PJM -s
#PJM --mpi "proc=4" 
# staging

export OMP_NUM_THREADS=4
export PLE_MPI_PIN_CELL=core
export PLE_MPI_PIN_ORDER=compact
export OMP_WAIT_POLICY=ACTIVE
export OMP_NUM_THREADS=4

export PARALLEL=4
NRNIV=" /home/users/go22/go0020/neuron_kplus/specials/sparc64/special -mpi"
HOC_NAME="./bench_main.hoc"
NRNOPT=\
" -c MODEL=2"\
" -c NSTIM_POS=1"\
" -c NSTIM_NUM=1"\
" -c NCELLS=4"\
" -c NSYNAPSE=1"\
" -c SYNAPSE_RANGE=1"\
" -c NETWORK=2"\
" -c STOPTIME=1000"\
" -c NTHREAD=4"\
" -c MULTISPLIT=0"\
" -c SPIKE_COMPRESS=0"\
" -c CACHE_EFFICIENT=1"\
" -c SHOW_SPIKE=1"

#LPG="lpgparm -t 4MB -s 4MB -d 4MB -h 4MB -p 4MB"
MPIEXEC="mpiexec -mca mpi_print_stats 1"
#MPIEXEC="mpiexec -mca mpi_print_stats 2 -mca mpi_print_stats_ranks 0"
for i in `seq 1 5`
do
    PROF="fapp -C -Icpupa,nompi -L 1 -Hevent=pa$i  -d ./ws-4-4-4$i "
#fapp -C -Icpupa,nompi -Hevent=pa2   -d ./rep2 ./a.out
#fapp -C -Icpupa,nompi -Hevent=pa3  -d ./rep3 ./a.out
#fapp -C -Icpupa,nompi -Hevent=pa4  -d ./rep4"
#fapp -C -Icpupa,nompi -Hevent=pa5  -d ./rep5" 
#PROF="fapp -C -d ./proffapp -L4 -Hevent=Statistics"
#PROF="fipp -C -Ihwm,call -d ./prof"
#PROF=""

    echo "${PROF} ${MPIEXEC} ${LPG} ${NRNIV} ${NRNOPT} ${HOC_NAME}"
    time ${PROF} ${MPIEXEC} ${LPG} ${NRNIV} ${NRNOPT} ${HOC_NAME}
done
sync


