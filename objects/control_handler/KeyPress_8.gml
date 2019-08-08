if (global.console_open) {
	if (has_param3) { 
		keyboard_string = param3;
		has_param3 = false;
		param3 = "";
	} else if (has_param2) {
		keyboard_string = param2;
		has_param2 = false;
		param2 = "";
	} else if (has_param1) {
		keyboard_string = param1;
		has_param1 = false;
		param1 = "";
	} else if (has_cmd) {
		keyboard_string = cmd;
		has_cmd = false;
		cmd = "";
	}
}
