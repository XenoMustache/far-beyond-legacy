/// @desc Render Healthbar and Shader
if (global.debug_show_extra_data) {
	draw_line(x + lengthdir_x(32, image_angle), y + lengthdir_y(32, image_angle), x + lengthdir_x(64, image_angle), y + lengthdir_y(64, image_angle));
	draw_healthbar(x - (8 * 3), y + (17 * 3), x + (8 * 3), y + (18 * 3), health_percent, c_black, c_red, c_lime, 0, false, false);
	draw_healthbar(x - (8 * 3), y + (20 * 3), x + (8 * 3), y + (21 * 3), shield_percent, c_black, c_aqua, c_aqua, 0, false, false);
}
if (hit) {
	shader_set(shd_hit);
	draw_self();
	shader_reset();
} else {
	draw_self();
}