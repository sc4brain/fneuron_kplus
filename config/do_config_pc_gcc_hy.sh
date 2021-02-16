#/bin/sh

#FLAGS="-O3 -fopenmp"\
#" -DKPLUS -DKPLUS_USE_OMP"\
#" -DKPLUS_FADVANCE  -DKPLUS_USE_FADVANCE_OMP"\
#" -DKPLUS_SOLVE -DKPLUS_TREESET -DKPLUS_CAP_JACOB -DKPLUS_EION"\
#" -DKPLUS_GATHER_SCATTER -DKPLUS_SPAWN"

FLAGS="-O3 -fopenmp -DKPLUS -DKPLUS_USE_OMP -DKPLUS_FADVANCE -DKPLUS_USE_FADVANCE_OMP -DKPLUS_SOLVE -DKPLUS_TREESET -DKPLUS_CAP_JACOB -DKPLUS_EION"

./configure --prefix=$(cd ../; pwd)/exec/        \
    --without-iv --without-x --without-nrnoc-x11 \
    --with-paranrn --with-mpi --with-multisend   \
    use_pthread=no                               \
    CFLAGS="${FLAGS}"   \
    CXXFLAGS="${FLAGS}" \
    | tee ../log/do_configure.txt

