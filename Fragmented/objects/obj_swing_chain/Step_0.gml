if (global.paused) exit;
if (!pause) {
    var _tx = platformID.x + xOffset;
    var _ty = platformID.y;
    image_angle  = point_direction(x, y, _tx, _ty) + 90;
    image_yscale = point_distance(x, y, _tx, _ty) / sprite_get_height(sprite_index);
}