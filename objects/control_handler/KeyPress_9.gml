/// @desc Set Mouse Lock
if (mouse_locked == false) mouse_locked = true else {
	window_mouse_set(global.display_width / 2, global.display_height / 2);
	mouse_locked = false;
}
