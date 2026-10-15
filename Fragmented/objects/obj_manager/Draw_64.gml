draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_lunchtime);
var gui_center_h = display_get_gui_width() / 2;
var gui_top_center_v = 50;
var text_scale = 4;

var time = time_source_get_time_remaining(time_source);

var mm = floor(time) div 60;
var ss = floor(time) mod 60;
var hshs = time - floor(time);

var mm_string = string_replace(string_format(mm, 2, 0)," ","0");
var ss_string = string_replace(string_format(ss, 2, 0)," ","0");
var hshs_string = string_replace(string_format(floor(hshs * 100), 2, 0)," ","0");


draw_text_transformed(gui_center_h, gui_top_center_v, mm_string+":"+ss_string+":"+hshs_string, text_scale, text_scale, 0);
