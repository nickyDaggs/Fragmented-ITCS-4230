//Border Script copied from Reddit https://www.reddit.com/r/gamemaker/comments/52vvym/script_to_draw_a_text_with_a_border_around_it/
function draw_txt_border(){
	///scr_draw_border_text(x, y, text, color, border, thickness, alpha)

	var pos_x = argument0;
	var pos_y = argument1;
	var text = argument2;
	var color = argument3;
	var border = argument4;
	var thickness = argument5;
	var alpha = argument6;

	// draw border
	draw_text_transformed_colour(pos_x+thickness, pos_y, text, thickness, thickness, 0, border, border, border, border, alpha);
	draw_text_transformed_colour(pos_x-thickness, pos_y, text, thickness, thickness, 0, border, border, border, border, alpha);
	draw_text_transformed_colour(pos_x, pos_y+thickness, text, thickness, thickness, 0, border, border, border, border, alpha);
	draw_text_transformed_colour(pos_x, pos_y-thickness, text, thickness, thickness, 0, border, border, border, border, alpha);

	// draw inner text
	draw_text_transformed_colour(pos_x, pos_y, text, thickness, thickness, 0, color, color, color, color, alpha);
}