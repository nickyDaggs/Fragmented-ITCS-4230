if(plane_on) {
	instance_create_layer(x, y, "FadeLayer", obj_black_fade);
	obj_player.paused = true;
	alarm[0] = 27;
	plane_on = false;
}