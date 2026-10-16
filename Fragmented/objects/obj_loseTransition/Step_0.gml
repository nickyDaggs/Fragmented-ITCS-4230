switch (stage) {
    case 0:
        fade += 0.05;

        if (fade >= 1) {
            fade = 1;
            stage = 1;
            room_goto(LoseScreen);
        }
        break;

    case 1:
        fade -= 0.05;

        if (fade <= 0) {
            fade = 0;
            stage = 2;
        }
        break;

    case 2:
        timer--;

        if (timer <= 0) {
            stage = 3;
        }
        break;

    case 3:
        fade += 0.05;

        if (fade >= 1) {
            fade = 1;
            stage = 4;
            room_goto(GameLevel);
        }
        break;

    case 4:
        stage = 5;
        break;


    case 5:
        fade -= 0.05;

        if (fade <= 0) {
            fade = 0;

            if (instance_exists(obj_player)) {
                obj_player.paused = false;
            }

            if (instance_exists(obj_manager)) {
                time_source_resume(obj_manager.time_source);
            }

            instance_destroy();
        }
        break;
}

fade = clamp(fade, 0, 1);