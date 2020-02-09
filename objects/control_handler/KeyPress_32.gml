if (global.console_open) {
	if (!has_cmd) { 
		cmd = keyboard_string;
		has_cmd = true;
		
		keyboard_string = "";
	} else if (!has_param1) {
		param1 = keyboard_string;
		has_param1 = true;
		
		keyboard_string = "";
	} else if (!has_param2) {
		param2 = keyboard_string;
		has_param2 = true;
		
		keyboard_string = "";
	} else if (!has_param3) {
		param3 = keyboard_string;
		has_param3 = true;
		
		keyboard_string = "";
	}
}