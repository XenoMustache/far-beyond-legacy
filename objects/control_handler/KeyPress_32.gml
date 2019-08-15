if (global.console_open) {
	if (!has_cmd) { 
		cmd = keyboard_string;
		has_cmd = true;
		keyboard_string = "";
	} else if (!has_param1) {
		param1 = keyboard_string;
		has_param1 = true;
		keyboard_string = "";
	} else if (!has_param2) {
		param2 = keyboard_string;
		has_param2 = true;
		keyboard_string = "";
	} else if (!has_param3) {
		param3 = keyboard_string;
		has_param3 = true;
		keyboard_string = "";
	}
}
if (!global.console_open && !global.game_paused && !ui_handler.show_pause_menu) {
	global.game_paused = true;
	mouse_locked = false;
	window_mouse_set(display_get_gui_width() / 2, display_get_gui_height() / 2);
} else if (can_unpause_game){ 
	global.game_paused = false;
	mouse_locked = true;
}