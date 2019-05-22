/// @desc Set Fullscreen
if (!window_get_fullscreen()) { 
	window_set_fullscreen(true);
	} else { 
	window_set_fullscreen(false);
	window_set_size(view_default_width * window_scale, view_default_height * window_scale);
}