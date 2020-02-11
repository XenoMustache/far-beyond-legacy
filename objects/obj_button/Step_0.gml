/// @desc Wait for click
if (instance_exists(obj_ui_handler)) {
	if (!control_handler.mouse_locked)
		if (point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), button_x*obj_camera.zoom - (button_width / 2)*obj_camera.zoom, button_y*obj_camera.zoom - (button_height / 2)*obj_camera.zoom, button_x*obj_camera.zoom + (button_width / 2)*obj_camera.zoom, button_y*obj_camera.zoom + (button_height / 2)*obj_camera.zoom))
			mouse_hover = true else mouse_hover = false;
	if (control_handler.mouse_locked)
		mouse_hover = false;
} else {
	if (point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), button_x*obj_camera.zoom - (button_width / 2)*obj_camera.zoom, button_y*obj_camera.zoom - (button_height / 2)*obj_camera.zoom, button_x*obj_camera.zoom + (button_width / 2)*obj_camera.zoom, button_y*obj_camera.zoom + (button_height / 2)*obj_camera.zoom))
			mouse_hover = true else mouse_hover = false;
}

if (button_clicked && script != noone) script_execute(script);