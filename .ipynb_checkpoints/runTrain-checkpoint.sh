#!bin/bash

DATASET_DIR="/local/maestro-v2/"

# Modify to your workspace
WORKSPACE="/local/mel_project532s/"

python3 pytorch/main.py train --workspace=$WORKSPACE --model_type='Regress_onset_offset_frame_velocity_CRNN' --loss_type='regress_onset_offset_frame_velocity_bce' --augmentation='none' --max_note_shift=0 --batch_size=6 --learning_rate=0.00032805 --reduce_iteration=10000 --resume_iteration=41000 --early_stop=250000 --cuda
