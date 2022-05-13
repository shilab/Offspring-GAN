#!/bin/bash
#SBATCH --job-name=Supratim_conda
#SBATCH --partition=gpu
#SBATCH --gres=gpu:4
#SBATCH --time=4-00:00:00
#SBATCH --mem=50GB
#SBATCH --output=/home/supratim/main/jupyter_job_%J.log

#cd $SLURM_SUBMIT_DIR

#module load ohpc
#module load anaconda/3
#source activate /share/sw/open/anaconda/3
module load cdac/DL_conda_3.7/3.7

#conda init bash

source activate supratim_env 

#conda info # to test if the conda envrn is correct

cat /etc/hosts
jupyter lab --ip=0.0.0.0 --port=8888
