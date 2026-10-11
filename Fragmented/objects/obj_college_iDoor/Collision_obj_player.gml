if(keyboard_check(ord("Z"))) {
	instance_create_layer(x, y, "FadeLayer", obj_black_fade);
	prompt_on = false;
	obj_player.paused = true;
	alarm[0] = 30;
}