if(player_yspeed > 0 && (bbox_bottom - player_yspeed) <= other.bbox_top + 16) {
	on_ground = false;
	jumping = true;
	player_yspeed = -12;
	
	image_index = 0;
    image_speed = 1;
}
