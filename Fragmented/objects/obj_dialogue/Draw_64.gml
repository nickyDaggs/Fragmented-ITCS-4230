//Code Borrowed from "Make Your First RPG | Dialogue Boxes" video by GameMaker
var _win = (room == WinScreen);

var _dx = 0;
var _dy = _win ? 0 : gui_h * 0.85;

var _boxw = gui_w;
var _boxh = gui_h - _dy;

draw_sprite_stretched_ext(spr_box, 0, _dx, _dy, _boxw, _boxh, c_black, 0.7);

_dx += _win ? 120 : 50;
_dy += _win ? 80 : 16;

var text_scale = _win ? 3 : 1.5;
var _wrap = (_boxw - _dx * 2) / text_scale;

draw_set_font(fnt_lunchtime);
draw_set_halign(fa_left);
if (_win) draw_set_valign(fa_top);

var name = messages[current_message].name;
if (name != "") {
	draw_text(_dx, _dy, name);
	_dy += 40 * text_scale;
}

if (_win) {
	for (var i = 0; i < current_message; i++) {
		var _prev = messages[i].msg;
		draw_text_ext_transformed(_dx, _dy, _prev, -1, _wrap, text_scale, text_scale, 0);
		_dy += string_height_ext(_prev, -1, _wrap) * text_scale + 40;
	}
}

draw_text_ext_transformed(_dx, _dy, draw_message, -1, _wrap, text_scale, text_scale, 0);