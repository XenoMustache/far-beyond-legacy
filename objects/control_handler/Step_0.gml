/// @desc Other Keys
if (keyboard_check_pressed(192)) {
	if (global.console_open) global.console_open = false else global.console_open = true;
	keyboard_string = "";
	if (mouse_locked == false) mouse_locked = true else {
		window_mouse_set(window_get_width() / 2, window_get_height() / 2);
		mouse_locked = false;
	}
}
