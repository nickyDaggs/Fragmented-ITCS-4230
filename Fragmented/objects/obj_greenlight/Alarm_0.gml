if(green) {
	//mask_index = 1;
	sprite_index = spr_empty;
} else {
	mask_index = -1;
	sprite_index = spr_greenlight;
}
green = !green;
alarm[0] = 90;