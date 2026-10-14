//Code Borrowed from "Make Your First RPG | Dialogue Boxes" video by GameMaker 
var _dx = 0;
var _dy =  gui_h * 0.7;

var _boxw = gui_w
var _boxh = gui_h - _dy

draw_sprite_stretched(spr_box, 0, _dx, _dy, _boxw, _boxh);

_dx += 50;
_dy += 16;

draw_set_font(fnt_game);
draw_set_halign(fa_left);

var name = messages[current_message].name;
draw_text(_dx, _dy, name);

_dy += 40;

draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 2);
