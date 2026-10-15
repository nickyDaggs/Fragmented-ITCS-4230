if (shaded) {
	shader_set(shd_grayscale);
	draw_self();
	shader_reset();
} else {
	draw_self();
}
