#!/bin/bash -x

pjsub /home/hp120263/k00634/neuron_kplus/k_job/single_omp/single2.sh
pjsub /home/hp120263/k00634/neuron_kplus/k_job/single_omp/single_omp1.sh
pjsub /home/hp120263/k00634/neuron_kplus/k_job/single_omp/single_omp2.sh
pjsub /home/hp120263/k00634/neuron_kplus/k_job/single_omp/single_omp4.sh
pjsub /home/hp120263/k00634/neuron_kplus/k_job/single_omp/single_omp8.sh

pjsub /home/hp120263/k00634/neuron_kplus/k_job/single_omp/single2_fapp.sh
pjsub /home/hp120263/k00634/neuron_kplus/k_job/single_omp/single_omp1_fapp.sh
pjsub /home/hp120263/k00634/neuron_kplus/k_job/single_omp/single_omp8_fapp.sh

pjsub /home/hp120263/k00634/neuron_kplus/k_job/single_omp/single2_fapp4.sh
pjsub /home/hp120263/k00634/neuron_kplus/k_job/single_omp/single_omp1_fapp4.sh
pjsub /home/hp120263/k00634/neuron_kplus/k_job/single_omp/single_omp8_fapp4.sh
