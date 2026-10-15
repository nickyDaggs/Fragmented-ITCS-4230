switch (stage) {
    case 0:
        fade += 0.05;
        if (fade >= 1) {
            room_goto(TransitionRoom);
            stage = 1;
        }
        break;

    case 1:
        fade -= 0.05;
        if (fade <= 0) stage = 2;
        break;

    case 2:
        timer--;
        if (timer <= 0) stage = 3;
        break;

    case 3:
        fade += 0.05;
        if (fade >= 1) {
            room_goto(MainRoomV2);
            stage = 4;
        }
        break;

    case 4:
        fade -= 0.05;
        if (fade <= 0) instance_destroy();
        break;
}

fade = clamp(fade, 0, 1);