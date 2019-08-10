/// @desc Update
if(keyboard_check_pressed(ord("Z"))) {
	zoom++;
	if(zoom>max_zoom) zoom=1;
	window_set_size(ideal_width*zoom,ideal_height*zoom);
	display_set_gui_size(ideal_width,ideal_height);
	surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
	alarm[0]=1;
}
if (window_get_fullscreen()) {
	zoom = max_zoom;
	window_set_size(ideal_width*zoom,ideal_height*zoom);
	display_set_gui_size(ideal_width,ideal_height);
	surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
}
