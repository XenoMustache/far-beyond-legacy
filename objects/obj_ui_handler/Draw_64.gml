// Manage all UI elements
// TODO Seperate Health and Shield bars
// TODO Fix status bar tip scaling
if (control_handler.mouse_locked) window_set_cursor(cr_none) else window_set_cursor(cr_default);
var view_width = display_get_gui_width();
var view_height = display_get_gui_height();
//var c_shield = make_color_rgb(85,172,238);
//var c_shield_back = make_color_rgb(41,131,199);
//var c_health = make_color_rgb(235,118,35);
//var c_health_back = make_color_rgb(214,63,22);
// Display HUD
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(fnt_ui);

if (player_exists) {
	draw_set_halign(fa_right);
	
	//draw_sprite_ext(spr_status_bar, 0, 106, 48, 3, 3, image_angle, c_white, 1);
	//draw_sprite_ext(spr_health_filled, 0, 28, 10, (obj_player_ship.ship_hull / obj_player_ship.ship_hull_max)*3, 3, image_angle, c_white, 1);
	//draw_sprite_ext(spr_shield_filled, 0, 28, 31, (obj_player_ship.shield / obj_player_ship.shield_max)*3, 3, image_angle, c_white, 1);
	
	// TODO New stats and display UI
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	draw_text(5, 30, "HULL: " + string(obj_player_ship.ship_hull) + "%");
	draw_text(5, 50, "SHIELD: " + string(floor(obj_player_ship.shield_percent)) + "%");
	draw_text(5, 70, "HOSTILES: " + string(global.enemies_remaining));
	draw_text(5, 90, "LIVES: " + string(global.player_lives));
	
	//draw_healthbar(view_width / 2, 0, (view_width / 2) + 128, 8, obj_player_ship.health_percent, c_health_back, c_health, c_health, 0, true, false);
	//draw_healthbar(view_width / 2, 0, (view_width / 2) - 128, 8, obj_player_ship.health_percent, c_health_back, c_health, c_health, 0, true, false);
	//draw_healthbar(view_width / 2, 9, (view_width / 2) + 96, 17, obj_player_ship.shield_percent, c_shield_back, c_shield, c_shield, 0, true, false);
	//draw_healthbar(view_width / 2, 9, (view_width / 2) - 96, 17, obj_player_ship.shield_percent, c_shield_back, c_shield, c_shield, 0, true, false);
}

draw_set_alpha(1);

// Draw Console
if (global.console_open) {
	draw_set_color(c_black);
	
	draw_rectangle(0, 0, view_width, (view_height / 2) - 64, false);
	
	draw_set_color(c_white);
	draw_set_font(fnt_console);
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	
	draw_text_ext(8, (view_height / 2) - 105, console_output, 14, view_width - 128);
	draw_set_valign(fa_top);
	draw_text(8, (view_height / 2) - 90, ">: " + string (control_handler.cmd) + string(control_handler.param1) + string(control_handler.param2) + string(control_handler.param3) + string(keyboard_string) + "█");
	
	keyboard_string = string_copy(keyboard_string, 1, 60);
	
	draw_set_alpha(1);
}

if (global.game_paused && show_pause_menu = false) {
	//control_handler.mouse_locked = false;
	draw_set_font(fnt_ui);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(display_get_gui_width() / 2, 20, "Game Paused");
}