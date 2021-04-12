#!bin/bash

DATASET_DIR="/local/maestro-v2/"

# Modify to your workspace
WORKSPACE="/local/mel_project532s/"

python3 utils/features.py pack_maestro_dataset_to_hdf5 --dataset_dir=$DATASET_DIR --workspace=$WORKSPACE

