if (instance_place(x, y - 1, obj_player))
{
	if (x > obj_player.x) {
	image_angle = clamp(image_angle+.1, -20, 20);
	}
	if (x < obj_player.x) {
		image_angle = clamp(image_angle-.1, -20, 20);
	}
	
}
