if (instance_exists(ui_handler)) {
	if (!control_handler.mouse_locked)
		if (point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), x*obj_camera.zoom - (size / 2)*obj_camera.zoom, y*obj_camera.zoom - (size / 2)*obj_camera.zoom, x*obj_camera.zoom + (size / 2)*obj_camera.zoom, y*obj_camera.zoom + (size / 2)*obj_camera.zoom))
			mouse_hover = true else mouse_hover = false;
	if (control_handler.mouse_locked)
		mouse_hover = false;
} else {
	if (point_in_rectangle(window_mouse_get_x(), window_mouse_get_y(), x*obj_camera.zoom - (size / 2)*obj_camera.zoom, y*obj_camera.zoom - (size / 2)*obj_camera.zoom, x*obj_camera.zoom + (size / 2)*obj_camera.zoom, y*obj_camera.zoom + (size / 2)*obj_camera.zoom))
			mouse_hover = true else mouse_hover = false;
}