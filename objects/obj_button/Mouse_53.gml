if (mouse_hover) { 
	button_clicked = true;
	if (is_toggled && activated_toggle)
		activated_toggle = false;
	else if (is_toggled && !activated_toggle)
		activated_toggle = true;
	show_debug_message("click");
	alarm[0] = 1;
}
