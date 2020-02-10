/// @desc Display message
var c_header = make_color_rgb(29,29,29);
var title;
var content;

depth = 1;

draw_set_valign(fa_top);

if (display_message) {
	switch (message_type) {
		case "message_start":
			width = 500;
			height = 200;
			title = "Pirate invasion!";
			content = "Pirates are invading this sector! Use your ship to destroy the pirates, and their boss while defending civillians. You can collect health capsules and extra lives by destroying pirates. You win when the sector is clear.";
			
			draw_message(width, height, title, content);
			break;
		case "disclaimer":
			width = 500;
			height = 140;
			title = "NOTICE";
			content = "You are playing a highly experimental build of the game. There will most certainly be bugs. Features in this build do not reflect the finished work. Data may be be lost upon updating. You have been warned.";
			
			draw_message(width, height, title, content);
			break;
		case "settings":
			width = display_get_gui_width() - 100;
			height = display_get_gui_height() - 100;
			title = "settings";
			content = "";
			
			draw_message(width, height, title, content);
			
			draw_set_color(c_header);
			draw_line_width(200, 95, 200, 485, 2);
			break;
		case "changelog":
			width = display_get_gui_width() - 100;
			height = display_get_gui_height() - 100;
			title = "changelog";
			content = "";
			
			draw_message(width, height, title, content);
			break;
		case "respawn":
			width = 500;
			height = 200;
			title = "ship destroyed"
			content = "Your ship has been destroyed due to heavy damage. You may repair it for 100 credits. If you do not have the money you will go into debt until you reach -500 credits. If this occurs you will lose the game and need to restart.";
		
			draw_message(width, height, title, content);
			break;
		case "game_over":
			break;
		case "coming_soon": 
			break;
	}
}
