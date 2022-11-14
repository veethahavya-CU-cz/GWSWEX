# GWSWEX standalone variant

# Dependencies
* python 3: numpy, scipy
* fortran: gfortran, fgsl, OMP (optional)

# Installation
Run build.sh (tweak the fgsl lib and include locations as applicable) to compile the standalone program.   
Build Flags:  
-n: without OMP  
-p: with OMP support (default)
