#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --time=02:00:00
#SBATCH --A intro_vsc35000 #NOTE you need to put your own login name here!

cd $VSC_DATA

module purge
module load foss/2021a

source activate conda_env #conda_env = the name of your conda environment

python $VSC_DATA/machamp/train.py --dataset_configs $VSC_DATA/machamp/configs/ewt.upos.json --name test
