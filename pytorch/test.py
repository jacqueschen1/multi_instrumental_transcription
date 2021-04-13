import os
import sys
sys.path.insert(1, os.path.join(sys.path[0], '../utils'))
import pickle 
from utilities import (write_events_to_midi, RegressionPostProcessor)

output_dict = pickle.load(open("/content/drive/MyDrive/532Project/MelTraining/workspaceMelAttention/probs/model_type=Note_pedal/augmentation=none/dataset=maestro/split=test/MIDI-UNPROCESSED_01-03_R1_2014_MID--AUDIO_01_R1_2014_wav--1.pkl", 'rb'))
print(output_dict.keys())
post_processor = RegressionPostProcessor(50, 
                classes_num=88, onset_threshold=0.3, 
                offset_threshold=0.3, 
                frame_threshold=0.1, 
                pedal_offset_threshold=0.1)
(est_note_events, est_pedal_events) = \
            post_processor.output_dict_to_midi_events(output_dict)
write_events_to_midi(start_time=0, note_events=est_note_events, 
    pedal_events=est_pedal_events, midi_path="/content/test_midi.mid")
print('Write out to {}'.format(midi_path))
