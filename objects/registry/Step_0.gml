// TODO Settings Menu
var rm = room_get_name(room);
switch (rm) {
	case "rm_title":
		if(buttons_exist) {
			if (button_play.button_clicked) {room_goto_next();}
			if (button_settings.button_clicked) {
				show_settings = true;
				buttons_exist = false;
				instance_deactivate_object(obj_effect_renderer);
				instance_deactivate_object(button_play);
				subtitle = "";
				settings_box = create_message();
				settings_box.message_type = "settings";
				button1 = create_button("cancel", (display_get_gui_width() - 100), (display_get_gui_height()) - 75, 90, 30, false, c_rainbow, false);
				button2 = create_button("apply", (display_get_gui_width() - 200), (display_get_gui_height() - 75), 90, 30, false, c_rainbow, false);
				button_audio = create_button("audio", 90, 120, 90, 30, false, c_rainbow, true);
				button_controls = create_button("controls", 107, 160, 90, 30, false, c_rainbow, true);
				button_graphics = create_button("graphics", 105, 200, 90, 30, false, c_rainbow, true);
				button_misc = create_button("misc", 85, 240, 90, 30, false, c_rainbow, true);
				instance_destroy(button_settings);
				instance_deactivate_object(button_quit);
				instance_deactivate_object(button_changelog);
				alarm[2] = 1;
			} else alarm[2] = -1;
			if (button_quit.button_clicked) {game_end();}
			if (button_changelog.button_clicked) {
				show_settings = true;
				buttons_exist = false;
				instance_deactivate_object(obj_effect_renderer);
				instance_deactivate_object(button_play);
				subtitle = "";
				settings_box = create_message();
				settings_box.message_type = "changelog";
				button1 = create_button("close", (display_get_gui_width() - 100), (display_get_gui_height()) - 75, 90, 30, false, c_rainbow, false);
				instance_destroy(button_settings);
				instance_deactivate_object(button_quit);
				instance_deactivate_object(button_changelog);
			}
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