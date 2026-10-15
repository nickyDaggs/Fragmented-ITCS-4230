function ItemGlowCreate() {
	var _scale = max(abs(image_xscale), abs(image_yscale), 1);

	glow_system = part_system_create();
	part_system_depth(glow_system, depth - 1);

	glow_type = part_type_create();
	part_type_shape(glow_type, pt_shape_square);
	part_type_size(glow_type, 1 * _scale, 2 * _scale, 0, 0);
	part_type_color3(glow_type,
		make_color_rgb(255, 255, 200),
		make_color_rgb(180, 255, 60),
		make_color_rgb(40, 220, 70)
	);
	part_type_alpha3(glow_type, 1, 0.8, 0);
	part_type_speed(glow_type, 0.1 * _scale, 0.4 * _scale, 0, 0);
	part_type_direction(glow_type, 65, 115, 0, 0);
	part_type_gravity(glow_type, 0.04 * _scale, 90);
	part_type_life(glow_type, 35, 60);
	part_type_blend(glow_type, true);
}

function ItemGlowStep() {
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
