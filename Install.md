
To compile　basic codes,
```
    $ ../config/do_config_k1.sh

    $ make
    $ make install

    $ ../config/do_config_k2_tune.sh

    $ make clean
    $ make
    $ make install
```  
To indroduce perfomance-tuned the ion-dynamics michanism,
```
    $ cd ../exec
    $ cp ./x86_64/bin/* ./sparc64/bin/
    $ cd ./specials
    $ ../exec/sparc64/bin/nrnivmodl ../mod
```


To test simulator.
```
    $ cd hoc
    $ pjsub ../k_job/single_test.sh
```
