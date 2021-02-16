#!/bin/bash 
#PJM --rsc-list "node=11x22x12"
#PJM --rsc-list "elapse=25:00"
#PJM --rsc-list "rscunit=rscunit_ft01"
#PJM --rsc-list "rscgrp=eap-large"
#PJM --mpi "proc=17408"
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
export PLE_MPI_PIN_CELL=core
export PLE_MPI_PIN_ORDER=compact
export OMP_WAIT_POLICY=ACTIVE
export OMP_NUM_THREADS=8

export PARALLEL=8
echo "OMP_NUM_THREADS ${OMP_NUM_THREADS}"
NRNIV=" /home/hp200177/u00688/neuron_kplus/specials/sparc64/special -mpi"
NRNIV=" /home/hp200177/u00688/simulation_neuron/specials/sparc64/special -mpi"
HOC_NAME="./bench_main.hoc"
NRNOPT=\
" -c MODEL=2"\
" -c NSTIM_POS=1"\
" -c NSTIM_NUM=4"\
" -c NCELLS=17408"\
" -c NSYNAPSE=10"\
" -c SYNAPSE_RANGE=1"\
" -c NETWORK=2"\
" -c STOPTIME=1000"\
" -c NTHREAD=1"\
" -c MULTISPLIT=0"\
" -c SPIKE_COMPRESS=1"\
" -c CACHE_EFFICIENT=1"\
" -c SHOW_SPIKE=0"
LPG=""
#LPG="lpgparm -t 4MB -s 4MB -d 4MB -h 4MB -p 4MB"
MPIEXEC="mpiexec -mca mpi_print_stats 1"
#MPIEXEC="mpiexec -mca mpi_print_stats 2 -mca mpi_print_stats_ranks 0"
MPIEXEC="mpiexec"
#PROF="fapp -C -d ./prof17408 -L1 -Icpupa,mpi -Hevent=Statistics"
PROF="fipp -C -Puserfunc -d prof17408ipp -Sregion  -Icpupa,call,mpi"
#PROF="fipp -C -d prof-bk-nrn-strong-jam-rh-eion-cp-sp4-4 -Icpupa,call"
PROF=""
OUT="/home/hp200177/u00688/simulation_neuron/hoc/%/1000R/%j.stdout"
ERR="/home/hp200177/u00688/simulation_neuron/hoc/%/1000R/%j.stderr"
MCA=" -mca coll_tbi_intra_node_reduction 2 "
MCA=" -mca coll_select_allgather_algorithm bruck -mca coll_select_barrier_algorithm bruck -mca coll_select_allgatherv_algorithm bruck -mca coll_tbi_intra_node_reduction 4 "
echo "${PROF} ${MPIEXEC}  -stdout-proc  ${OUT} -stderr-proc  ${ERR} ${LPG} ${MCA} ${NRNIV} ${NRNOPT} ${HOC_NAME}"
time ${PROF} ${MPIEXEC}  -stdout-proc  ${OUT} -stderr-proc  ${ERR} ${LPG} ${MCA} ${NRNIV} ${NRNOPT} ${HOC_NAME}

sync


