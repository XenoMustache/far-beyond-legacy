/// @arg0 command
/// @arg1 param1
/// @arg2 param2
/// @arg3 param3
var command = argument0;
var param1 = argument1;
var param2 = argument2;
var param3 = argument3;
switch (command) {
	default:
		ui_handler.command_exec = "Error";
		ui_handler.command_feedback = "Please input valid command!";
	break;
	case "":
		ui_handler.command_exec = "Error";
		ui_handler.command_feedback = "Please input valid command!";
	break;
	case "quit":
		game_end();
	break;
	case "Hello World!":
		show_debug_message("Hello World!");
		ui_handler.command_exec = "Hello World";
		ui_handler.command_feedback = "";
	break;
}