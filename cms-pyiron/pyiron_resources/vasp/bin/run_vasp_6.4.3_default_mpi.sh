#!/bin/bash
export LD_LIBRARY_PATH=/opt/software/lib/:$LD_LIBRARY_PATH
export OMP_NUM_THREADS=1
exe="/opt/software/vasp.6.4.3/bin/vasp_std"
mpiexec -n $1 $exe
