if (room == GameLevel) {
    audio_stop_sound(snd_background_music2);
    audio_sound_gain(snd_background_music2, 1, 0);

	audio_sound_gain(snd_background_music, .85, 0);
}