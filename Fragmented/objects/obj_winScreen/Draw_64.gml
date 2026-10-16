draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_lunchtime);
var gui_center_h = display_get_gui_width() / 2;
var gui_center_v = display_get_gui_height() / 2;
var text_scale = 6;
var text = "Congratulations!\n" + "Best Attempts: " + string(obj_universal.best_attempts) + "\nAttempts: " + string(obj_universal.curr_attempts);
draw_text_transformed_colour(gui_center_h, gui_center_v - 50, text, text_scale, text_scale, 0, c_white,  c_white,  c_white,  c_white, 1);

text_scale = 4;
draw_text_transformed_colour(gui_center_h, gui_center_v + 300, "Press Esc to Return to Menu", text_scale, text_scale, 0, c_white,  c_white,  c_white,  c_white, 1);