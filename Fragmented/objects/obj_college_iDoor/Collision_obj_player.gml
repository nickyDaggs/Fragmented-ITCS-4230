if(keyboard_check(ord("Z"))) {
	instance_create_layer(x, y, "FadeLayer", obj_black_fade);
	prompt_on = false;
	alarm[0] = 30;
}