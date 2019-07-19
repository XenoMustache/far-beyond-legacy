switch (registry_type) {
	case 0:
		if(buttons_exist) {
			if (button_play.button_clicked) {room_goto_next();}
			if (button_settings.button_clicked) {}
			if (button_quit.button_clicked) {game_end();}
		}
	break;
	case 1:
	if (instance_exists(message_button)) {
		if (message_button.button_clicked) {
			instance_destroy(start_message);
			instance_destroy(message_button);
			player_spawn.trigger = true;
			control_handler.mouse_locked = true;
		}
	}
	break;
}