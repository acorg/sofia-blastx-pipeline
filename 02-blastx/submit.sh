#!/bin/bash -e

#SBATCH -J blastx
#SBATCH -A DSMITH-BIOCLOUD
#SBATCH -o slurm-%A.out
#SBATCH -p biocloud-normal
#SBATCH --time=05:00:00

task=$1

srun -n 1 blastx.sh $task
