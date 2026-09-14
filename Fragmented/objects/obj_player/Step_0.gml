var left_press = keyboard_check(vk_left);
var right_press = keyboard_check(vk_right);
var jump_press = keyboard_check_pressed(vk_space);
var jump_held = keyboard_check(vk_space);

var x_move = (right_press - left_press) * player_xspeed;

player_yspeed += player_gravity;

move_and_collide(0, player_yspeed, obj_testFloor, 4, 0, 0, 0, player_max_fall_speed);
move_and_collide(x_move, 0, obj_testFloor)

if(place_meeting(x, y + 1, obj_testFloor)) {
	on_ground = true;
} else {
	on_ground = false;
}

if(place_meeting(x, y + player_yspeed, obj_testFloor)) {
	player_yspeed = 0;
	if(jumping) {
		//jumping = false;
	}
}

//COYOTE TIMER

if(!on_ground) {
	if(coyote_counter > 0) {
		coyote_counter -= 1;
	
		if(!jumping) {
			if(jump_press) {
				player_yspeed = player_jump_speed;
				jumping = true;
			}
		}
	}
	
} else {
	jumping = false;
	coyote_counter = coyote_max;
}

//JUMP BUFFER

if(jump_press) {
	buffer_counter = buffer_max;
}

if(buffer_counter > 0) { 
	buffer_counter -= 1;
	
	if(on_ground) {
		
		player_yspeed = player_jump_speed;
		buffer_counter = 0;
		jumping = true;
	}
}

//HOLDING JUMP

if(jumping && !jump_held && player_yspeed < 0) {
	player_yspeed *= 0.5;
}

