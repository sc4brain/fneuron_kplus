#!/bin/bash

JOB_PATH=/home/nebula/git/neuron_kplus/pc_job/omp20180112

${JOB_PATH}/single_m0_th1_nocache.sh | tee m0_th1_nocache.log
${JOB_PATH}/single_m0_th1_notable.sh | tee m0_th1_notable.log
${JOB_PATH}/single_m0_th1_nocache_notable.sh | tee m0_th1_nocache_notable.log
${JOB_PATH}/single_m0_th1.sh | tee m0_th1.log
#${JOB_PATH}/single_m2_th1.sh | tee m2_th1.log
