if (global.console_open) {
	if (!has_cmd) { 
		cmd = keyboard_string;
	} else if (!has_param1) {
		param1 = keyboard_string;
	} else if (!has_param2) {
		param2 = keyboard_string;
		has_param2 = true;
	} else if (!has_param3) {
		param3 = keyboard_string;
	}
	show_debug_message(cmd + " " + param1 + " " + param2 + " " + param3);
	execute_command(string_lettersdigits(cmd), string_lettersdigits(param1), string_lettersdigits(param2), string_lettersdigits(param3));
	
	keyboard_string = "";
	
	obj_ui_handler.console_output += obj_ui_handler.command_exec + obj_ui_handler.command_feedback + "\n";
	
	cmd = "";
	param1 = "";
	param2 = "";
	param3 = "";
	has_cmd = false;
	has_param1 = false;
	has_param2 = false;
	has_param3 = false;
}