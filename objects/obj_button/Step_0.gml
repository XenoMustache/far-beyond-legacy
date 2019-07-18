if (instance_exists(ui_handler)) {
	if (!control_handler.mouse_locked)
		if (point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), button_x - (button_width / 2), button_y - (button_height / 2), button_x + (button_width / 2), button_y + (button_height / 2)))
			mouse_hover = true else mouse_hover = false;
	if (control_handler.mouse_locked)
		mouse_hover = false;
} else {
	if (point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), button_x - (button_width / 2), button_y - (button_height / 2), button_x + (button_width / 2), button_y + (button_height / 2)))
			mouse_hover = true else mouse_hover = false;
}