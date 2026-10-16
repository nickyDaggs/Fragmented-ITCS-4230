if (obj_universal.best_attempts == 0 || obj_universal.curr_attempts < obj_universal.best_attempts)
{
    obj_universal.best_attempts = obj_universal.curr_attempts;
}

room_goto(EndScreen);
prompt_on = true;
obj_player.paused = false;

