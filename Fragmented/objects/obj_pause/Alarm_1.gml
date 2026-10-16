//Premade code from jasontomlee https://jasontomlee.itch.io/pause-menu-gamemaker-1-2
/// @description Pause
if (time_source_get_state(time_source_game) == time_source_state_active) {
    time_source_pause(time_source_game);
}

if (instance_exists(obj_manager)) {
    game_timer = obj_manager.time_source;
}

global.paused = true;

with (all) {
    if (object_index != obj_pause && object_index != obj_controls && object_index != obj_universal) {
        pz_img  = image_speed;
        pz_path = path_speed;
        pz_alarms = [];
        for (var _a = 0; _a < 12; _a++) {
            pz_alarms[_a] = alarm[_a];
            alarm[_a] = -1;
        }
        image_speed = 0;
        path_speed  = 0;
    }
}
audio_pause_all();
//instance_activate_object( ... ); //Activate persistant objects like Cameras & Controllers!

screen_alpha_set	= 0.8;


//Reset Button Values * Put this here to reset the button positions so that they tween when you pause *
for( var i = 0; i< bc; i++; ){
	bx[ i ]		= 0;
	by[ i ]		= 0;
	bsca[ i ]	= 1;
	bcol[ i ]	= c_white;
	balpha[ i ]	= 1;
	bspd[ i ]	= 0;
	bxoff[ i ]	= 0;
	byoff[ i ]	= 0;
	byspd[ i ]	= 0;
}