/// @desc Render Healthbar and Shader
draw_healthbar(x - (8 * 3), y + (17 * 3), x + (8 * 3), y + (18 * 3), health_percent, c_black, c_red, c_lime, 0, false, false);
if (hit) {
	shader_set(shd_hit);
	draw_self();
	shader_reset();
} else {
	draw_self();
}