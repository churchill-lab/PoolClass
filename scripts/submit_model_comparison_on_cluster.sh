#!/bin/bash
#PBS -l nodes=1:ppn=4,mem=16gb,walltime=23:59:59

cd $PBS_O_WORKDIR

# Add environment modules here, for example ...
module load hdf5/1.8.14
module load R/3.5.1

# Run R script
Rscript ${RFILE} ${INFILE} ${OUTFILE} ${CORES} ${SEED}
