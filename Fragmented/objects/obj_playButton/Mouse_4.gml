obj_universal.curr_attempts = 1;
audio_sound_gain(snd_background_music2, 0, 1500);
audio_play_sound(snd_click, 1, false);
instance_create_layer(0, 0, "Instances", obj_startTransition);