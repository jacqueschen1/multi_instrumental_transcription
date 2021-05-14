
# Multi-instrument transcription

Music transcription is the task of transcribing piano recordings into MIDI files. This repo was forked from https://github.com/qiuqiangkong/piano_transcription_inference and has the code and trained models for our research project for UBC CPSC 532S deep learning course!

All details available in our report, available in this `project_report` folder. 

Demos: Coming soon

Some MIDI output examples available in the `sample_results` folder.

Install dependencies:
```
pip install -r requirements.txt
```

We trained on the MusicNet dataset for the multi-instrumental model and on the MAESTRO  datset for the piano model.

Some additional code for self-attention blocks was adapted from https://github.com/sahajgarg/image_transformer
