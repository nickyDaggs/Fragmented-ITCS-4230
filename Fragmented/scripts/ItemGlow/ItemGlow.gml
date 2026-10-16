function ItemGlowCreate() {
	glow_system = part_system_create();
	part_system_depth(glow_system, depth - 1);

	glow_type = part_type_create();
	part_type_shape(glow_type, pt_shape_square);
	part_type_size(glow_type, 0.08, 0.08, 0, 0);
	part_type_color1(glow_type, c_white);
	part_type_alpha2(glow_type, 0.8, 0);
	part_type_speed(glow_type, 0.2, 0.5, 0, 0);
	part_type_direction(glow_type, 80, 100, 0, 100);
	part_type_life(glow_type, 20, 35);
	part_type_blend(glow_type, true);

	glow_spawn = 0;
}

function ItemGlowStep() {
	glow_spawn += 1;
	if (glow_spawn < 4) return;
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
