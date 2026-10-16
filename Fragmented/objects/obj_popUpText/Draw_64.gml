if(item_gain || door_locked) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var gui_center_h = display_get_gui_width() / 2;
	var gui_center_v = display_get_gui_height() - 100;
	var text_scale = 3;
	
	draw_txt_border(gui_center_h,gui_center_v, item_text, c_white, c_black, text_scale, 1);
}

if (instance_exists(obj_player))
{
    var _scale = 4;                                   
    var _pad   = 20;
    var _size  = sprite_get_width(spr_bracelet) * _scale;
    var _x     = display_get_gui_width() - _pad - _size;
    var _y     = display_get_gui_height() - _pad - _size;

    if (obj_player.can_dash)
    {
        draw_sprite_ext(spr_bracelet, 0, _x, _y, _scale, _scale, 0, c_white, 1);
        _x -= _size + _pad / 2;
    }

    if (obj_player.jump_count >= 2)
    {
        draw_sprite_ext(spr_energyDrink, 0, _x, _y, _scale, _scale, 0, c_white, 1);
        _x -= _size + _pad / 2;
    }	
}