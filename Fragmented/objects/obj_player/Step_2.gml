if(place_meeting(x, y, obj_testFloor)) {
	for(var i = 0; i < 1000; ++i) {
		//Right
		if(!place_meeting(x + i, y, obj_testFloor)) {
			x += i;
			break;
		}
		//Left
		if(!place_meeting(x - i, y, obj_testFloor)) {
			x -= i;
			break;
		}
		//Up
		if(!place_meeting(x, y - i, obj_testFloor)) {
			y -= i;
			break;
		}
		//Down
		if(!place_meeting(x, y + i, obj_testFloor)) {
			y += i;
			break;
		}
		//Top Right
		if(!place_meeting(x + i, y - i, obj_testFloor)) {
			x += i;
			y -= i;
			break;
		}
		//Top Left
		if(!place_meeting(x - i, y - i, obj_testFloor)) {
			x -= i;
			y -= i;
			break;
		}
		//Bottom Right
		if(!place_meeting(x + i, y + i, obj_testFloor)) {
			x += i;
			y += i;
			break;
		}
		//Bottom Left
		if(!place_meeting(x - i, y + i, obj_testFloor)) {
			x -= i;
			y += i;
			break;
		}
	}
}

audio_listener_position(x, y, 0);