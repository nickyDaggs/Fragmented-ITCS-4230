global.paused = false;

with (all) {
    if (variable_instance_exists(id, "pz_alarms") && is_array(pz_alarms)) {
        image_speed = pz_img;
        path_speed  = pz_path;
        for (var _a = 0; _a < 12; _a++) alarm[_a] = pz_alarms[_a];
        pz_alarms = undefined;
    }
}

if (time_source_get_state(time_source_game) == time_source_state_paused) {
    time_source_resume(time_source_game);
}

audio_resume_all();

pause = false;
screen_alpha_set = 0;
b = 0;