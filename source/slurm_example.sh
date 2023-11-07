#!/bin/bash
#SBATCH --cluster=wice #NOTE this is only if you are on the WICE cluster, skip this if you are on Genius
#SBATCH -N 1
#SBATCH --ntasks=18
#SBATCH --gpus-per-node=1
#SBATCH --partition=gpu
#SBATCH --time=02:00:00
#SBATCH --A intro_vsc35000 #NOTE you need to put your own login name here!

cd $VSC_DATA

source activate conda_env #conda_env = the name of your conda environment

python $VSC_DATA/machamp/train.py --dataset_configs $VSC_DATA/machamp/configs/ewt.upos.json --name test
