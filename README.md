modified from sc4brain/neuron_kplus

to compile
    $ ../config/do_config_k1.sh

    $ make
    $ make install

    $ ../config/do_config_k2_tune.sh

    $ make clean
    $ make
    $ make install

    $ cd ../exec
    $ cp ./x86_64/bin/* ./sparc64/bin/

    $ cd ./specials
    $ ../exec/sparc64/bin/nrnivmodl ../mod

to test simulator
    $ cd hoc
    $ pjsub ../k_job/single_test.sh