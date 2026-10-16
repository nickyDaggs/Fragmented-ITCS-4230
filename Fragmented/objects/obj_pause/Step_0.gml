//Premade code from jasontomlee https://jasontomlee.itch.io/pause-menu-gamemaker-1-2

#region		Set Variables
////////////////////////////////////////////////////////////////////////////

///		Place inputs here		///
var kPause = keyboard_check_pressed(vk_escape)
             && !instance_exists(obj_dialogue)
             && !instance_exists(obj_loseTransition);
var kDown		= (mouse_wheel_down() || keyboard_check_pressed( vk_down )  );
var kUp			= (mouse_wheel_up() || keyboard_check_pressed( vk_up ) );
var kConfirm	= (keyboard_check_pressed( vk_enter));


screen_alpha	= Approach( screen_alpha, screen_alpha_set, .1 );

////////////////////////////////////////////////////////////////////////////
#endregion

#region		Controls
////////////////////////////////////////////////////////////////////////////

// Open PauseMenu when you minimize the window 
/*
if ( !window_has_focus() ){
	window = true;
} else {
	window = false;
}

if ( window != windowPrev ){
	if ( !window ){
		kPause = true;
	}
	windowPrev = window;
}
*/
if (instance_exists(obj_controls)) {

    if (keyboard_check_pressed(vk_escape)) {
        with (obj_controls) {
            instance_destroy();
        }
    }

    exit;
}

if (alarm[0] > 0 || alarm[1] > 0) exit;
///		Trigger PauseMenu	///
if (kPause) {
    if (pause) {
        pause = false;
        screen_alpha_set = 0;
        alarm[0] = 8;

    } else {
        pause = true;
        alarm[1] = 2;
    }
}

////////////////////////////////////////////////////////////////////////////
#endregion

#region		Buttons		
////////////////////////////////////////////////////////////////////////////

if ( pause ){
	///		Button Pos		///
	for( var i = 0; i< bc; i++; ){
		var x_set		= cx;
		var y_set		= cy- (bgap* ( b- i )); //align the vertical offset of the buttons
		var xoff_set	= 0;
		var yoff_set	= 0;
		var sca_set		= 1;
		var alpha_set	= 1;
		var col_set		= c_white;
		var diff		= abs( b-i );

		///		Hovered Button		///
		if ( b == i ){ 
		//x_set		= cx+ bxoff[i]; 
		sca_set		= 2.5;		 // scale
		alpha_set	= 1;		// alpha
		col_set		= c_white; //color
		xoff_set	= 15;	  // offset to the right

		///		Other Buttons	///
		} else {		
		//x_set		= cx;
		sca_set		= 2- (0.2* diff);
		alpha_set	= 1- (0.2* diff);
		col_set		= c_gray;
		xoff_set	= 0;
		}
		///		Set Temp variables into the specified button array		///
		bx[ i ]		= x_set+ bxoff[ i ];
		by[ i ]		= lerp( by[i], y_set, 0.2 );
		bsca[ i ]	= lerp( bsca[i], sca_set, .2 );
		balpha[ i ]	= lerp( balpha[i], alpha_set, .2 );
		bcol[ i ]	= col_set;
		
		bxoff[ i ]	= lerp( bxoff[ i ], xoff_set, .2 );
		byoff[ i ]  = yoff_set;
		
	}

	
	
	///		Scroll through buttons		///
	if ( kDown ){
		b  = Approach( b, bc- 1, 1 );
		// audio_play_sound( sound[0], 0, 0 );
	} else if ( kUp ){
		b	= Approach( b, 0, 1 );
		// audio_play_sound( sound[0], 0, 0 );
	}
	
	
	///		Select Button	///
	if ( kConfirm ){
		if ( pause ){
			// audio_play_sound( sound[1], 0, 0 );
		switch( b ){
			case 0: // Resume
			    pause = false;
			    screen_alpha_set = 0;
			    alarm[0] = 8;
			break;
			case 1: // Controls
				if (!instance_exists(obj_controls)) {
			        instance_create_depth(100, 100, -1600, obj_controls);
			    }
			break;
			case 2: // MainMenus
				if (game_timer != -1) {
			        time_source_stop(game_timer);
			    }

			    instance_activate_all();
			    audio_resume_all();

			    if (time_source_get_state(time_source_game) == time_source_state_paused) {
			        time_source_resume(time_source_game);
			    }

				global.paused = false;
			    room_goto(MainMenu);
			break;
			case 3: // Exit
				game_end();
			break;
		}
		}
		} //end Confirm statement
} 

////////////////////////////////////////////////////////////////////////////
#endregion
