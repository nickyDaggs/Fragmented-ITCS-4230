if(plane_on) {
	audio_play_sound(snd_death, 1, false);
	instance_create_layer(x, y, "FadeLayer", obj_black_fade);
	obj_player.paused = true;
	alarm[0] = 27;
	plane_on = false;
}