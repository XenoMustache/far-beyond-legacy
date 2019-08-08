if (mouse_locked == false) mouse_locked = true else {
	window_mouse_set(display_get_gui_width() / 2, display_get_gui_height() / 2);
	mouse_locked = false;
}
