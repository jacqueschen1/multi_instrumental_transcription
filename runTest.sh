
#!bin/bash

DATASET_DIR="/local/maestro-v2/"

# Modify to your workspace
WORKSPACE="/content/drive/MyDrive/532Project/MelTraining/workspaceOrigMel"
NOTE_CHECKPOINT_PATH="/content/drive/MyDrive/532Project/CPSC_532s_PTH_files/Mel_Attention/250000_iterations.pth"
NOTE_PEDAL_CHECKPOINT_PATH="/content/drive/MyDrive/532Project/CPSC_532s_PTH_files/Original_Mel/250000_iterations_orig_combined.pth"

# python3 pytorch/combine_note_and_pedal_models.py --note_checkpoint_path=$NOTE_CHECKPOINT_PATH --output_checkpoint_path=$NOTE_PEDAL_CHECKPOINT_PATH


# python3 pytorch/calculate_score_for_paper.py infer_prob --workspace=$WORKSPACE --model_type='Note_pedal' --checkpoint_path=$NOTE_PEDAL_CHECKPOINT_PATH --augmentation='none' --dataset='maestro' --split='test' --cuda

# Calculate metrics
python3 pytorch/calculate_score_for_paper.py calculate_metrics --workspace=$WORKSPACE --model_type='Note_pedal' --augmentation='none' --dataset='maestro' --split='test'