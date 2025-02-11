### David's binary
export LD_LIBRARY_PATH=/mulfs/home/p0817489/bin/lib:$LD_LIBRARY_PATH
export OMP_NUM_THREADS=1
module load openmpi/4.1.6-gcc-11.4.0-ovn6h4m
exe="/mulfs/home/p0817489/bin/vasp_std_6.5.0"

srun $exe
