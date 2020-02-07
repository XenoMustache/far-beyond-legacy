// TODO Settings Menu

/// @desc Initial room wait event
var rm = room_get_name(room);
switch (rm) {
	case "rm_title":
		if(buttons_exist) {
			if (button_play.button_clicked) {room_goto_next();}
			if (button_settings.button_clicked) { } 
			else alarm[2] = -1;
			if (button_quit.button_clicked) game_end();
			if (button_changelog.button_clicked) { }
		}
	break;
	case "rm_sandbox":
	if (instance_exists(message_button)) {
		if (message_button.button_clicked) {
			control_handler.can_unpause_game = true;
			instance_destroy(start_message);
			instance_destroy(message_button);
			player_spawn.trigger = true;
			control_handler.mouse_locked = false;
			global.game_paused = false;
		}
	}
	break;
}