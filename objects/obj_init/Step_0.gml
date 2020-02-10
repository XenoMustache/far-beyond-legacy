/// @desc Initial room wait event
var rm = room_get_name(room);

switch (rm) {
	case "rm_title":
		if(buttons_exist) {
			if (button_play.button_clicked) {room_goto_next();}
		//	if (button_settings.button_clicked) { } 
			else alarm[2] = -1;
			if (button_quit.button_clicked) game_end();
			if (button_changelog.button_clicked) { }
		}
		break;
	case "rm_sandbox":
		if (instance_exists(start_message) && start_message.display_text && !start_message.destroy_message && instance_number(message_button) = 0) {
			message_button = create_button("Close", display_get_gui_width() / 2, (display_get_gui_height() / 2) + 80, 120, 30, false, c_gray, false);
			show_debug_message("create");
		}
	
		if (instance_exists(message_button)) {
			if (message_button.button_clicked) {
				control_handler.can_unpause_game = true;
				start_message.destroy_message = true;
				instance_destroy(message_button);
				player_spawn.trigger = true;
				control_handler.mouse_locked = false;
				global.game_paused = false;
			}
		}
		
		if (instance_exists(global.respawn_button)) {
			if (instance_exists(global.respawn_message)) {
				if (global.respawn_button.button_clicked) {
					player_spawn.trigger = true;
					
					instance_destroy(global.respawn_button);
					instance_destroy(global.respawn_message);
					
					global.respawn_button = noone;
					global.respawn_message = noone;
				}
			} else {
				instance_destroy(global.respawn_button);
			}
		}
		break;
}