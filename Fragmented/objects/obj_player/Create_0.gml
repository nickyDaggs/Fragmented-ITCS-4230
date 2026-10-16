paused = false;

player_yspeed = 0;
player_xspeed = 5;
player_gravity = 0.35;
player_max_fall_speed = 10;
player_jump_speed = -8;

//Amount of jumps toggled by jump_count in Variable Definitons
jump_current = 0;
jump_started = false;

//dash
dash_ready = true;
dash_xspeed = 200;

buffer_counter = 0; //Initializes counter for jump buffer
buffer_max = 6; //Amount of frames allowed for buffer

coyote_counter = 0;
coyote_max = 6;

depth = -9;
jumping = false;
on_ground = false;

player_scale = 1;
mask_index = spr_player;

dash_blocked = function(_x, _y) {
    var _list = ds_list_create();
    var _n = instance_place_list(_x, _y, obj_testFloor, _list, false);
    var _blocked = false;
    for (var i = 0; i < _n; i++) {
        if (_list[| i].object_index != obj_collegewall) {
            _blocked = true;
            break;
        }
    }
    ds_list_destroy(_list);
    return _blocked;
};

