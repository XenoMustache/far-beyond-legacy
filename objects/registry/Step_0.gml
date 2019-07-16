if (instance_exists(message_button))
	if (message_button.button_clicked) {
		instance_destroy(start_message);
		instance_destroy(message_button);
		player_spawn.trigger = true;
	}