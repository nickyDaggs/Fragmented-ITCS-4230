var left_press = keyboard_check(vk_left);
var right_press = keyboard_check(vk_right);
var down_press = keyboard_check(vk_down);
var jump_press = keyboard_check_pressed(vk_space);
var jump_held = keyboard_check(vk_space);

var dash_press = keyboard_check(vk_shift);

var x_move = (right_press - left_press) * player_xspeed;

player_yspeed += player_gravity;

//vercollision, movement, and jumping

var one_way_obj = instance_place(x, y + player_yspeed, obj_OneWayFloor);
var top_of_one_way = one_way_obj != noone and self.bbox_bottom <= one_way_obj.bbox_top+1;

if(place_meeting(x, y + player_yspeed, obj_testFloor) or 
place_meeting(x, y + player_yspeed, obj_OneWayFloor) && top_of_one_way && !down_press) {
	player_yspeed = 0;
}

move_and_collide(0, player_yspeed, obj_testFloor, 4, 0, 0, 0, player_max_fall_speed);
move_and_collide(x_move, 0, obj_testFloor);



if((place_meeting(x, y + 1, obj_testFloor)) or (place_meeting(x, y + 1, obj_OneWayFloor))) {
	on_ground = true;
	jump_current = jump_count;
} else {
	on_ground = false;
}



//COYOTE TIMER

if(!on_ground) {
	if(coyote_counter > 0) {
		coyote_counter -= 1;
	
		if(!jumping) {
			if(jump_press) {
				player_yspeed = player_jump_speed;
				jump_current--;
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
	
	if(jump_current > 0) {
		jump_current--;
		player_yspeed = player_jump_speed;
		buffer_counter = 0;
		jumping = true;
	}
}

//HOLDING JUMP

if(jumping && !jump_held && player_yspeed < 0) {
	player_yspeed *= 0.5;
}

//Teleport Dash
if(can_dash && dash_press && dash_ready) { 
	dash_ready = false;
	dash_speed = (right_press - left_press) * dash_xspeed;
	if(place_meeting(x+dash_speed, y, obj_testFloor)) {
        if(!place_meeting(x+1, y, obj_testFloor)) {
            x+=1;
        }
    } else {
		x += (right_press - left_press) * dash_xspeed;
	}
	alarm[0] = 30;
}

