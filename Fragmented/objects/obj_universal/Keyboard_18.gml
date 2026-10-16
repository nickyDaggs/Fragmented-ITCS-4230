//Fullscreen Toggle
if (keyboard_check_pressed(ord("F")))
{
    if window_get_fullscreen()
        window_set_fullscreen(false);
    else
        window_set_fullscreen(true);
}

//Give all items
if (keyboard_check_pressed(ord("I")))
{
    obj_player.can_dash = true;
	obj_player.jump_count = 2;
	
}

//Restart Room
if (keyboard_check_pressed(ord("R")))
{
    time_source_stop(obj_manager.time_source);
	room_restart();
}

//Set timer to 10 seconds left
if (keyboard_check_pressed(ord("T")))
{
    time_source_stop(obj_manager.time_source);
	time_source_reconfigure(obj_manager.time_source, 10, time_source_units_seconds, loopGame);
	time_source_start(obj_manager.time_source);
}

//Pause and resume timer
if (keyboard_check_pressed(ord("P")))
{
    if(!timer_paused) {
		timer_paused = true;
		time_source_pause(obj_manager.time_source);
	} else {
		timer_paused = false;
		time_source_resume(obj_manager.time_source);
	}
}

//Teleport to college area
if (keyboard_check_pressed(ord("C")))
{
	obj_player.x = college_teleport1.x;
	obj_player.y = college_teleport1.y;
}

//Teleport to final area
if (keyboard_check_pressed(ord("D")))
{
	obj_player.x = final_teleport.x;
	obj_player.y = final_teleport.y;
}

