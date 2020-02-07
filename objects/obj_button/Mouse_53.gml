/// @desc Click
if (mouse_hover) {
	button_clicked = true;
	if (is_toggled && activated_toggle && does_untoggle)
		activated_toggle = false;
	else if (is_toggled && !activated_toggle)
		activated_toggle = true;
	alarm[0] = 1;
}
