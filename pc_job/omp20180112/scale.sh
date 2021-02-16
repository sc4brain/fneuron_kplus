#!/bin/bash

JOB_PATH=/home/nebula/git/neuron_kplus/pc_job/omp20180112

${JOB_PATH}/single_m0_th1.sh | tee m0_th1.log
${JOB_PATH}/single_m0_th2.sh | tee m0_th2.log
${JOB_PATH}/single_m0_th4.sh | tee m0_th4.log
${JOB_PATH}/single_m0_th8.sh | tee m0_th8.log
${JOB_PATH}/single_m2_th1.sh | tee m2_th1.log
${JOB_PATH}/single_m2_th2.sh | tee m2_th2.log
${JOB_PATH}/single_m2_th4.sh | tee m2_th4.log
${JOB_PATH}/single_m2_th8.sh | tee m2_th8.log
