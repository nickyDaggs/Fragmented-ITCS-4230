function loopGame(){
	var snd = audio_play_sound(snd_death, 1, false);

	if (instance_exists(obj_player)) {
		instance_create_layer(obj_player.x, obj_player.y, "FadeLayer", obj_black_fade);
		obj_player.paused = true;
	}

	call_later(21, time_source_units_frames, function() {
		room_restart();
	});
}