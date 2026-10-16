function loopGame(){
	var snd = audio_play_sound(snd_lose, 1, false);

	if (instance_exists(obj_player)) {
		instance_create_layer(obj_player.x, obj_player.y, "FadeLayer", obj_black_fade);
		obj_player.paused = true;
	}

	instance_create_layer(0, 0, "Instances", obj_loseTransition);
}