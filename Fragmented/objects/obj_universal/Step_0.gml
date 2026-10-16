if (room == GameLevel && instance_exists(obj_player)) {

    if (!audio_is_playing(snd_background_music)) {
		var music1 = audio_play_sound(snd_background_music, 90, true);

	    audio_sound_gain(music1, 0, 0);
	    audio_sound_gain(music1, 1, 2000);
    }
	
	if (obj_player.y <= 1100) {
	    audio_sound_gain(snd_background_music, 0, 100);
	}
}
