#/bin/sh

./configure --prefix=$(cd ../; pwd)/exec/        \
    --without-iv --without-x --without-nrnoc-x11 \
    --with-paranrn --with-mpi --with-multisend   \
    use_pthread=no                               \
    CC=mpiicc CXX=mpiicpc MPICC=mpiicc MPICXX=mpiicpc \
    CFLAGS="-O3 -DKPLUS -DKPLUS_GATHER_SCATTER -DKPLUS_SPAWN"   \
    CXXFLAGS="-O3 -DKPLUS -DKPLUS_GATHER_SCATTER -DKPLUS_SPAWN" \
    | tee ../log/do_configure.txt

