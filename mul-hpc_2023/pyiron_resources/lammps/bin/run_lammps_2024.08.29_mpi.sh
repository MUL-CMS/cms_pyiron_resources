#!/bin/bash
module load openmpi/4.1.6-gcc-11.4.0-ovn6h4m

exe="/mulfs/home/p0817489/software/lammps-29Aug2024/bin/lmp_mpi"
srun $exe -in control.inp
