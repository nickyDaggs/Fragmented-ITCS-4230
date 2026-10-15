function ItemGlowCreate(_col1, _col2, _col3) {
	var _scale = max(abs(image_xscale), abs(image_yscale), 1);

	glow_system = part_system_create();
	part_system_depth(glow_system, depth - 1);

	glow_type = part_type_create();
	part_type_shape(glow_type, pt_shape_square);
	part_type_size(glow_type, 1 * _scale, 2 * _scale, -0.03 * _scale, 0);
	part_type_color3(glow_type, _col1, _col2, _col3);
	part_type_alpha3(glow_type, 1, 0.6, 0);
	part_type_speed(glow_type, 0.15 * _scale, 0.45 * _scale, 0, 0);
	part_type_direction(glow_type, 70, 110, 0, 0);
	part_type_life(glow_type, 20, 40);
	part_type_blend(glow_type, true);

	glow_spawn = 0;
}

function ItemGlowStep() {
	glow_spawn += 1;
	if (glow_spawn < 3) return;

	glow_spawn = 0;
	part_particles_create(
		glow_system,
		x + sprite_width * 0.5,
		y + sprite_height * 0.5,
		glow_type,
		1
	);
}

function ItemGlowCleanup() {
	part_system_destroy(glow_system);
	part_type_destroy(glow_type);
}
