#! /bin/bash
#SBATCH -J PMET
#SBATCH -p A800
#SBATCH -n 2
#SBATCH -N 1
#SBATCH --gres=gpu:a800:1

export HF_ENDPOINT=https://hf-mirror.com

python evaluate.py \
    --model_name=EleutherAI/gpt-j-6B \
    --alg_name=PMET \
    --hparams_fname=EleutherAI_gpt-j-6B.json \
    --ds_name=mcf \
    --num_edits=10000