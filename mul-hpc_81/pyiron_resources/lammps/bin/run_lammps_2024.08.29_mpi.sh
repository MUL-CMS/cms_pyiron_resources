#!/bin/bash -x
exe="/home/dholec/software/lammps-29Aug2024/bin/lmp_mpi"
mpirun -np SLURM_NPROCS $exe -in control.inp

