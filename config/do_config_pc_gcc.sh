#/bin/sh

./configure --prefix=$(cd ../; pwd)/exec/        \
    --without-iv --without-x --without-nrnoc-x11 \
    --with-paranrn --with-mpi --with-multisend   \
    use_pthread=no                               \
    CFLAGS="-O3 -DKPLUS -DKPLUS_GATHER_SCATTER -DKPLUS_SPAWN"   \
    CXXFLAGS="-O3 -DKPLUS -DKPLUS_GATHER_SCATTER -DKPLUS_SPAWN" \
    | tee ../log/do_configure.txt

#    CC=/usr/bin/mpicc CXX=/usr/bin/mpic++        \
#    CFLAGS="-O3 -pg -D_G_uint32_t=uint -D_G_int32_t=int -Du_int32_t=uint"        \
#    CXXFLAGS="-O3 -pg -D_G_uint32_t=uint -D_G_int32_t=int -Du_int32_t=uint" \
