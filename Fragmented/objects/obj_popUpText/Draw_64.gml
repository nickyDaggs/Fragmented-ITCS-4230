if(item_gain) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var gui_center_h = display_get_gui_width() / 2;
	var gui_center_v = display_get_gui_height() - 100;

	draw_text(gui_center_h, gui_center_v, item_text);
}