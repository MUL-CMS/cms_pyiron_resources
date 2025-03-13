#!/bin/bash
mpiexec -n $1 /opt/conda/envs/pyiron/bin/lmp_mpi -in control.inp
