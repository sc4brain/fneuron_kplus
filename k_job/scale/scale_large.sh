#!/bin/bash -x

pjsub ~/neuron_kplus/k_job/scale/large_82944_syn50.sh
pjsub ~/neuron_kplus/k_job/scale/large_165888_syn50.sh
pjsub ~/neuron_kplus/k_job/scale/large_331776_syn50.sh

pjsub ~/neuron_kplus/k_job/scale/large_82944.sh
pjsub ~/neuron_kplus/k_job/scale/large_165888.sh
pjsub ~/neuron_kplus/k_job/scale/large_331776.sh
