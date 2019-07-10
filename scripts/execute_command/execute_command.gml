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
		ui_handler.command_feedback = "Unknown command, use help for a list of commands";
	break;
	case "quit":
		game_end();
	break;
	case "help":
		ui_handler.command_exec = "";
		ui_handler.command_feedback = 
		"clear \n" +
		"cls \n" +
		"godmode \n" +
		"life <amount> \n" +
		"quit \n" +
		"tgm \n" + 
		"help <command> \n";
	break;
	case "cls":
	case "clear":
		ui_handler.command_exec = "";
		ui_handler.command_feedback = "";
		ui_handler.console_output = "";
	break;
	case "godmode":
	case "tgm":
		if (!global.god_mode) {
			ui_handler.command_exec = "";
			ui_handler.command_feedback = "Enabled god mode"
			obj_player_ship.ship_hull_max = 10000000;
			obj_player_ship.ship_hull = obj_player_ship.ship_hull_max;
			global.god_mode = true;
		} else {
			ui_handler.command_exec = "";
			ui_handler.command_feedback = "Disabled god mode"
			obj_player_ship.ship_hull_max = 100;
			global.god_mode = false;
		}
	break;
	case "life":
			if (!string_is_int(param1)) {
				ui_handler.command_exec = "";
				ui_handler.command_feedback = "Please enter a valid amount";
			} else {
				global.player_lives = param1;
				ui_handler.command_exec = "";
				ui_handler.command_feedback = "Set player lives to " + string(param1);
			}
	break;
}