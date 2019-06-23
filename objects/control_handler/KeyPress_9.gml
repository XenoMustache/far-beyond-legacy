/// @desc Set Mouse Lock
if (mouse_locked == false) mouse_locked = true else {
	window_mouse_set(window_get_width() / 2, window_get_height() / 2) 
	mouse_locked = false
};
