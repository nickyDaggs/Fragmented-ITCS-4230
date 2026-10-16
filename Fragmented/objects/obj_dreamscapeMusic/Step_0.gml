if (global.paused) exit;
if (instance_exists(obj_player) && obj_player.y <= 1100) {

    audio_emitter_position(emitter, x, y, 0);

    if (dreamscape_music == -1) {
        dreamscape_music = audio_play_sound_on(emitter, snd_background_music2, true, 100);
    }

    var fade_top    = 400;
    var fade_bottom = 1000;

    var up    = 1 - clamp((obj_player.y - fade_top) / (fade_bottom - fade_top), 0, 1);
    var right = clamp(obj_player.x / 1920, 0, 1);

    var target = up + (1 - up) * 0.4 * right;

    current_gain = lerp(current_gain, target, 0.04);
    audio_emitter_gain(emitter, current_gain);

} else {
    current_gain = lerp(current_gain, 0, 0.1);
    audio_emitter_gain(emitter, current_gain);
}