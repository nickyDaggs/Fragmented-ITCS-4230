if(keyboard_check(ord("Z"))) {
	if(obj_player.jump_count >= 2) {
		instance_create_layer(x, y, "FadeLayer", obj_black_fade);
		prompt_on = false;
		obj_player.paused = true;
		alarm[0] = 30;
	} else {
		obj_popUpText.door_locked = true;
		obj_popUpText.item_text = "Hm this door is locked. Maybe I should explore some more."
		alarm[1] = 240;
	}
}