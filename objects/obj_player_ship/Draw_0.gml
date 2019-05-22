/// @desc Render Healthbar
draw_self();
draw_healthbar(x - (8 * 3), y + (17 * 3), x + (8 * 3), y + (18 * 3), health_percent, c_black, c_red, c_lime, 0, false, false);
draw_healthbar(x - (8 * 3), y + (20 * 3), x + (8 * 3), y + (21 * 3), shield_percent, c_black, c_aqua, c_aqua, 0, false, false);