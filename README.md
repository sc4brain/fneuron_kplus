- This branch is the SC21-version of NEURON K+, our neuron/neural circit simulator in masively pararellized enviroment based on NEURON 7.2.
- We ran this vesion of  NEURON K+  on Fugaku (the language environment is '4.4.0a tcsds-1.2.30') that have the Fujitsu A64FX and use Fujitsu's proprietary torus fusion interconnect.
- Performance tuning of the neural circuit simulator in the large-scale computational environment of the supercomputer Fugaku enabled in excess of 630 TFLOPS using 480k core and near real-time simulation of the Resting State of the Drosophila whole-brain model, based on open connectome databases, using the biophysical+ detailed inhomogenious multi-compartment Hodgkin-Huxley model. In our model, the dynamics of the neural circuits related to a standard insect learning paradigm, the association of taste rewards with odors could be simulated.
- For installing and testing, see [Install.md](/Install.md).  Other jobscripts were stored under kjob directory.

