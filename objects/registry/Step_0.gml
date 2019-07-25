// TODO Settings Menu
switch (registry_type) {
	case 0:
		if(buttons_exist) {
			if (button_play.button_clicked) {room_goto_next();}
			if (button_settings.button_clicked) {
				show_settings = true;
				buttons_exist = false;
				instance_deactivate_object(obj_effect_renderer);
				instance_deactivate_object(button_play);
				subtitle = "";
				settings_box = create_message();
				settings_box.message_type = "feature_unavailable";
				button1 = create_button(1, 1, "Close", global.display_width / 2, (global.display_height / 2) + 80);
				instance_destroy(button_settings);
				instance_deactivate_object(button_quit);
			}
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
			global.game_paused = false;
		}
	}
	break;
}