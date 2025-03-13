#!/bin/bash
exe="/opt/software/lammps-29Aug2024/bin/lmp_mpi"
mpiexec -n ${PYIRON_CORES:=$1} --oversubscribe $exe -in control.inp
