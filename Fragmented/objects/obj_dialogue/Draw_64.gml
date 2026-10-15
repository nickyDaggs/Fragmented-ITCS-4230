//Code Borrowed from "Make Your First RPG | Dialogue Boxes" video by GameMaker 
var _dx = 0;
var _dy =  gui_h * 0.85;

var _boxw = gui_w
var _boxh = gui_h - _dy

draw_sprite_stretched_ext(spr_box, 0, _dx, _dy, _boxw, _boxh, c_black, 0.7);

_dx += 50;
_dy += 16;

var text_scale = 1.5;

draw_set_font(fnt_lunchtime);
draw_set_halign(fa_left);

var name = messages[current_message].name;
draw_text(_dx, _dy, name);

_dy += 40 * text_scale;

draw_text_ext_transformed(_dx, _dy, draw_message, -1, (_boxw - _dx * 2) / text_scale, text_scale, text_scale, 0);
