// TODO Command args - NEXT RELEASE
if (global.console_open) {
	execute_command(string_letters(cmd), string_letters(param1), string_letters(param2), string_letters(param3));
	keyboard_string = "";
	ui_handler.console_output += ui_handler.command_exec + ui_handler.command_feedback + "\n";
	cmd = "";
	param1 = "";
	param2 = "";
	param3 = "";
	has_cmd = false;
	has_param1 = false;
	has_param2 = false;
	has_param3 = false;
}