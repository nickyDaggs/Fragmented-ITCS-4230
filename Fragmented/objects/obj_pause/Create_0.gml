//Premade code from jasontomlee https://jasontomlee.itch.io/pause-menu-gamemaker-1-2
// Easing functions source: http://sol.gfxile.net/interpolation/
// If you liked this asset, please give it a rating. Thank you! 


/////////////////////////////////////////////////////////
//		 Make sure to set your game to 60 fps		 ///
//		 Turn off pixel 'smoothing' or interpolation //
//		 Just incase... (:							//
room_speed = 60;
game_timer = -1;

//////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////


#region  General	
/////////////////////////////////////////////////////////////////

font = fnt_lunchtime;
draw_set_font( font );

pause		= false;
global.paused = false;
gwidth		= display_get_gui_width();
gheight		= display_get_gui_height();
cx			= gwidth/2;
cy			= gheight/2;
screen_alpha		= 0;
screen_alpha_set	= 0;

// Insert your sounds here
//sound[0] = //Scroll through buttons
//sound[1] = //Confirm 

// Check if your Window is open/closed
window		= true;
windowPrev	= true;

/////////////////////////////////////////////////////////////////
#endregion

#region Buttons 
/////////////////////////////////////////////////////////////////

b		= 0; //selected
bc		= 0;
bgap	= 40; //vertical spacing between buttons


var	n = 0;
bstring[ n ]	= " RESUME "; n++;
bstring[ n ]	= " CONTROLS "; n++;
bstring[ n ]	= " MAINMENU "; n++;
bstring[ n ]	= " EXIT "; n++;
bc		= n; //total button count;


//Initialize Button values
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

/////////////////////////////////////////////////////////////////
Approach = function(_value, _target, _amount) {
    if (_value < _target) {
        return min(_value + _amount, _target);
    }

    return max(_value - _amount, _target);
};
#endregion

