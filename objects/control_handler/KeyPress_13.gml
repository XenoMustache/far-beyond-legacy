/// @desc Execute command/finalize input
// TODO Command args - NEXT RELEASE
if (global.console_open) {
	execute_command(keyboard_string, 0, 0, 0);
	keyboard_string = "";
	ui_handler.console_output += ui_handler.command_exec + ui_handler.command_feedback + "\n";
}