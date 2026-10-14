var _my_method = function()
{
    room_restart();
}

time_source = time_source_create(time_source_game, 180, time_source_units_seconds, loopGame);
//timer_on = true;

time_source_start(time_source);
