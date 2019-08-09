/// @desc Render Healthbars, Shield and Shader
if (global.debug_show_extra_data) {
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
draw_set_color(make_color_rgb(85,172,238));
draw_circle(x, y, 75, true);