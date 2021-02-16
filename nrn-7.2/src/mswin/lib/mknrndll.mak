

EXTRA_CYGWIN = -I$N/lib -I$N/gccinc -I$N/gcc3inc -L$N/gcclib
EXTRA_FLAGS =  $(EXTRA_CYGWIN)

CFLAGS = \
-DDLL_EXPORT -DPIC \
-I$N/src/scopmath -I$N/src/nrnoc -I$N/src/oc \
$(EXTRA_FLAGS)


# to handle variations of filename extensions
.SUFFIXES: .o .mod .moD .mOd .mOD .Mod .MoD .MOd .MOD
.PRECIOUS: %.c

%.o : %.mod

%.c : %.mod
	nocmodl $*

%.o : %.c
	gcc $(CFLAGS) -c $*.c

# additional rules to handle variations of filename extensions
%.c : %.moD
	gcc $(CFLAGS) -c $*.c

%.c : %.mOd
	gcc $(CFLAGS) -c $*.c

%.c : %.mOD
	gcc $(CFLAGS) -c $*.c

%.c : %.Mod
	gcc $(CFLAGS) -c $*.c

%.c : %.MoD
	gcc $(CFLAGS) -c $*.c

%.c : %.MOd
	gcc $(CFLAGS) -c $*.c

%.c : %.MOD
	gcc $(CFLAGS) -c $*.c

%.o : %.moD

%.o : %.mOd

%.o : %.mOD

%.o : %.Mod

%.o : %.MoD

%.o : %.MOd

%.o : %.MOD

mod_func.o: mod_func.c
	gcc $(CFLAGS) -c $*.c

#nrnmech.dll: mod_func.o $(MODOBJFILES)
#	ld -d -S -x -r -o nrnmech.dll mod_func.o $(MODOBJFILES) -L$N/lib -lscpmt

nrnmech.dll: mod_func.o $(MODOBJFILES)
	gcc $(EXTRA_FLAGS) -shared -o nrnmech.dll mod_func.o $(MODOBJFILES) \
  -L$N/bin -lnrniv
	rebase -b 0x64000000 -v nrnmech.dll

#nm nrnmech.dll | mkdll -u > nrnmech.h #will give a list of neuron.exe names
#required by nrnmech.dll

mod_func.o $(MODOBJFILES): $(N)/bin/nrniv.exe


