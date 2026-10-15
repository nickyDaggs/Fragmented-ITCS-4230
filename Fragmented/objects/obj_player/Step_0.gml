var left_press = keyboard_check(vk_left);
var right_press = keyboard_check(vk_right);
var down_press = keyboard_check(vk_down);
var jump_press = keyboard_check_pressed(vk_space);
var jump_held = keyboard_check(vk_space);

var dash_press = keyboard_check(vk_shift);

var x_move = (right_press - left_press) * player_xspeed;


if (!paused) {
	player_yspeed += player_gravity;

	//collision, movement, and jumping

	var one_way_obj = instance_place(x, y + player_yspeed, obj_OneWayFloor);
	var top_of_one_way = one_way_obj != noone and self.bbox_bottom <= one_way_obj.bbox_top+2;
	
	if (player_yspeed > 0 && place_meeting(x, y + player_yspeed, obj_OneWayFloor) && top_of_one_way) {
		player_yspeed = 0;
	}

	move_and_collide(x_move, player_yspeed, obj_testFloor, 8, 0, 0, player_xspeed, -1);



	if(place_meeting(x, y + 1, obj_testFloor) or 
	place_meeting(x, y + 1, obj_OneWayFloor) or
	place_meeting(x, y + 1, obj_swing_plat)) {
		on_ground = true;
		jump_current = jump_count;
		
		if (player_yspeed > 0) {
	        player_yspeed = 0;
	    }
	} else {
		on_ground = false;
	}

	//Moving Platform Collision
	var _movingPlatform = instance_place(x, y + max(1, player_yspeed), obj_swing_plat);
	if(_movingPlatform && bbox_bottom <= _movingPlatform.bbox_top + 2) {
		x += _movingPlatform.moveX;
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
	if (can_dash && dash_press && dash_ready) {
	    var _dir = right_press - left_press;
	    if (_dir != 0) {
	        dash_ready = false;

	        var _dist = dash_xspeed;
	        if (_dir > 0) _dist = min(_dist, room_width - bbox_right);
	        else          _dist = min(_dist, bbox_left);
	        _dist = max(0, floor(_dist));

	        var _reach = 0;
	        while (_reach < _dist && !dash_blocked(x + _dir * (_reach + 1), y)) {
	            _reach++;
	        }
	        _dist = _reach;

	        while (_dist > 0 && place_meeting(x + _dir * _dist, y, obj_testFloor)) {
	            _dist--;
	        }

	        x += _dir * _dist;
	        alarm[0] = 30;
		}
	}
}

// PLAYER ANIMATIONS

var new_sprite;

if (!on_ground || player_yspeed < 0) {
    new_sprite = spr_player_jump;
}
else if (x_move != 0) {
    new_sprite = spr_player_run;
}
else {
    new_sprite = spr_player_idle;
}

if (sprite_index != new_sprite) {
    sprite_index = new_sprite;
    image_index = 0;
    image_speed = 1;
}

if (sprite_index == spr_player_jump) {
    var hold_frame = sprite_get_number(spr_player_jump) - 1;

    if (image_index >= hold_frame) {
        image_index = hold_frame;
        image_speed = 0;
    }
}

if (x_move > 0) {
    image_xscale = player_scale;
}
else if (x_move < 0) {
    image_xscale = -player_scale;
}