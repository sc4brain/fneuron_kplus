#!/bin/bash

./configure --prefix=$(cd ../; pwd)/exec/       \
    --without-iv --without-x --with-nmodl-only  \
    linux_nrnmech=no \
    CC=gcc CXX=g++
