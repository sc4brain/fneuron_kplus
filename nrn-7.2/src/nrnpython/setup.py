#setup.py
from distutils.core import setup, Extension
from distutils.sysconfig import get_python_version

import sys

# NRNPYTHON_DEFINES which were enabled at configure time
extern_defines = ""
nrnpython_exec = ""
nrnpython_pyver = ""
nrn_srcdir = "."
ivlibdir = ""
if ivlibdir == "" :
    ivlibdir = '.'

instdir = "/home/hp200177/u00688/tsimulation_neuron/exec"
if nrn_srcdir[0] != '/' :
    nrn_srcdir = '../../' + nrn_srcdir

if nrnpython_pyver!=get_python_version():
    print "Error:"
    print "NEURON configure time python: "+nrnpython_exec+"  "+ nrnpython_pyver
    print "Python presently executing setup.py: "+sys.executable+"   "+ get_python_version()
    print "These do not match, and they should!"
    sys.exit(1)


ldefs = extern_defines.split('-D')

# if using MPI then at least for linking need special paths and libraries
mpicc_bin = "mpifccpx"
mpicxx_bin = "mpiFCCpx"
import os
os.environ["CC"]=mpicc_bin
os.environ["CXX"]=mpicxx_bin

# apparently we do not need the following
#################################
## following http://code.google.com/p/maroonmpi/wiki/Installation
## hack into distutils to replace the compiler in "linker_so" with mpicxx_bin
#
#import distutils
#import distutils.unixccompiler
#
#class MPI_UnixCCompiler(distutils.unixccompiler.UnixCCompiler):
#    __set_executable = distutils.unixccompiler.UnixCCompiler.set_executable
#
#    def set_executable(self,key,value):
#	print "MPI_UnixCCompiler ", key, " | ", value
#        if key == 'linker_so' and type(value) == str:
#            value = mpicxx_bin + ' ' + ' '.join(value.split()[1:])
#
#        return self.__set_executable(key,value)
#    
#distutils.unixccompiler.UnixCCompiler = MPI_UnixCCompiler
#################################

include_dirs = [nrn_srcdir+'/src/oc', '../oc']
defines = []

libdirs = ["/home/hp200177/u00688/tsimulation_neuron/exec/sparc64/lib",
  ivlibdir
]
epre='-Wl,-R'


hoc_module = Extension(
      "neuron.hoc",
      ["inithoc.cpp"],
      library_dirs=libdirs,
       = [ epre+libdirs[0],epre+libdirs[1] ],
      #extra_objects = [],
      libraries = [
	"nrnpython",
        "nrnoc", "oc", "nrniv", "ivoc",
        "memacs", "meschach", "neuron_gnu", "nrnmpi",
        "scopmath", "sparse13", "sundials", "ivos",
	"readline"
      ],
      include_dirs = include_dirs,
      define_macros=defines
    )



setup(name="NEURON", version="7.2",
      description = "NEURON bindings for python",
      package_dir = {'':instdir+'/share/nrn/lib/python'},
      packages=['neuron','neuron.tests'],
      ext_modules=[hoc_module]
)

