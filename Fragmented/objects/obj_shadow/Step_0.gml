if (hit) exit;

if (instance_exists(obj_player)) {
    if (distance_to_object(obj_player) <= 300) {
        if (!chasing) {
            chasing = true;
            path_end();
        }
        mp_potential_step(obj_player.x, obj_player.y, 2, false);
    }
    else if (chasing) {
        chasing = false;
        path_start(path_shadow, 2, path_action_restart, true);
    }
}