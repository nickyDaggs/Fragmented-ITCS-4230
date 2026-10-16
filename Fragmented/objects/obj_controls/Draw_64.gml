draw_rectangle_colour(0, 0, display_get_gui_width(), display_get_gui_height(), c_black, c_black, c_black, c_black, false);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_lunchtime);
var gui_center_h = display_get_gui_width() / 2;
var gui_center_v = display_get_gui_height() / 2;
var text_scale = 4;
var text = "Controls\n" + "Move - Left and Right Arrows\nJump - Space(Hold to jump higher)\nToggle Fullscreen - Alt + F";
draw_text_transformed_colour(gui_center_h, gui_center_v - 200, text, text_scale, text_scale, 0, c_white,  c_white,  c_white,  c_white, 1);

var text2 = "Item Controls\nBracelet - Dash - Shift\nEnergy Drink - Double Jump - Space While In the Air"
draw_text_transformed_colour(gui_center_h, gui_center_v + 200, text2, text_scale, text_scale, 0, c_white,  c_white,  c_white,  c_white, 1);

draw_text_transformed_colour(gui_center_h, gui_center_v + 400, "Press Esc to Return", text_scale, text_scale, 0, c_white,  c_white,  c_white,  c_white, 1);