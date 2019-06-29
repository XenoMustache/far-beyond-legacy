/// @arg0 command
/// @arg1 param1
/// @arg2 param2
/// @arg3 param3
var command = string_lower(argument0);
var param1 = argument1;
var param2 = argument2;
var param3 = argument3;
switch (command) {
	default:
	case "":
		ui_handler.command_exec = "";
		ui_handler.command_feedback = "Unknown command, use help or ? for a list of commands";
	break;
	case "quit":
		game_end();
	break;
	case "?":
	case "help":
		ui_handler.command_exec = "";
		ui_handler.command_feedback = 
		"? \n" +
		"clear \n" +
		"cls \n" +
		"help \n" +
		"quit";
	break;
	case "cls":
	case "clear":
		ui_handler.command_exec = "";
		ui_handler.command_feedback = "";
		ui_handler.console_output = "";
	break;
}