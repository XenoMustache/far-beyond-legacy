// Manage all UI elements
var view_width = camera_get_view_width(view_camera[0]);
var c_shield = make_color_rgb(85,172,238);
var c_shield_back = make_color_rgb(41,131,199);
var c_health = make_color_rgb(153,102,255);
var c_health_back = make_color_rgb(100,55,190);
// Display HUD
draw_set_halign(fa_center);
draw_text(view_width / 2, 20, "lives: " + string(global.player_lives));
// Healthbars
draw_healthbar(view_width / 2, 0, (view_width / 2) + 128, 8, obj_player_ship.health_percent, c_health_back, c_health, c_health, 0, true, false);
draw_healthbar(view_width / 2, 0, (view_width / 2) - 128, 8, obj_player_ship.health_percent, c_health_back, c_health, c_health, 0, true, false);
draw_healthbar(view_width / 2, 9, (view_width / 2) + 96, 17, obj_player_ship.shield_percent, c_shield_back, c_shield, c_shield, 0, true, false);
draw_healthbar(view_width / 2, 9, (view_width / 2) - 96, 17, obj_player_ship.shield_percent, c_shield_back, c_shield, c_shield, 0, true, false);