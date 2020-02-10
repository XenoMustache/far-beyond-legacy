/// @desc Initial room wait event
var rm = room_get_name(room);

switch (rm) {
	case "rm_title":
		if(buttons_exist) {
			if (instance_exists(logo) && logo.image_alpha < 1) 
				logo.image_alpha += 0.025;
			
			if (instance_exists(button_play) && button_play.text_alpha < 1)
				button_play.text_alpha += 0.025;
				
			if (instance_exists(button_quit) && button_quit.text_alpha < 1)
				button_quit.text_alpha += 0.025;
				
			if (instance_exists(button_changelog) && button_changelog.text_alpha < 1)
				button_changelog.text_alpha += 0.025;
			
			if (button_play.button_clicked) {room_goto_next();}
		//	if (button_settings.button_clicked) { } 
		//	else alarm[2] = -1;
			if (button_quit.button_clicked) game_end();
			if (button_changelog.button_clicked) { }
		}
		break;
	case "rm_sandbox":
		if (instance_exists(message_button)) {
			if (message_button.text_alpha < 1 && start_message.display_text) message_button.text_alpha += 0.025;
			
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
				global.respawn_button.text_alpha = global.respawn_message.text_alpha;
				if (global.respawn_button.button_clicked) {
					player_spawn.trigger = true;
					
					instance_destroy(global.respawn_button);
					global.respawn_message.destroy_message = true;
					
					global.respawn_button = noone;
					global.respawn_message = noone;
				}
			} else {
				instance_destroy(global.respawn_button);
			}
		}
		break;
}