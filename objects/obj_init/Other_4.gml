/// @desc Init room data
var rm = room_get_name(room);

switch (rm) {
	case "rm_init": room_goto_next(); break;
	case "rm_title":
		draw_set_halign(fa_middle);
		
		c_rainbow = make_color_hsv((get_timer()) mod 255,255,255);
		
		if (global.show_notice) {
			disclaimer = create_message("disclaimer");
			buttons_exist = false;
			
			alarm[1] = room_speed * 10;
		} else alarm[1] = 1;
		break;
	case "rm_sandbox":
		audio_stop_all();
		global.game_paused = true;
		var music = audio_emitter_create();
		audio_emitter_gain(music, global.volume_music);
		
		if (!global.mute_music && !global.mute_all) audio_play_sound_on(music, snd_3SFU, true, 1);
		
		start_message = create_message("message_start");
		message_button = create_button("Close", display_get_gui_width() / 2, (display_get_gui_height() / 2) + 80, 120, 30, false, c_gray, false);
		message_button.text_alpha = 0;
		
		player_spawn = instance_create_depth(room_width / 2, room_height / 2, 0, obj_event_point);
		player_spawn.point_type = point_types.player_spawn;
		//asteroid_field = create_hazard("small_asteroid_field", room_width / 2, room_height / 2, "circle", 1500, true, 8, 0.75);
		
		instance_create_depth(0, 0, 0, control_handler);
		instance_create_depth(0, 0, 0, obj_ui_handler);
		instance_create_depth(room_width / 2, room_height / 2, 0, obj_camera_controller);
		control_handler.mouse_locked = false;
		
		background_layer = layer_get_id("Background");
		background_1 = layer_background_get_id(background_layer);
		
		layer_background_sprite(background_1, spr_bg);
		
		for (i = 0; i < 10; i++) {
			posX = random_range(0 + 16, room_height - 16);
			posY = random_range(0 + 16, room_height - 16);
			
			with (instance_create_depth(posX, posY, 0, obj_npc)) {
				set_npc_type(npc_types.pirate_test);
				npc_faction = factions.pirate;
				global.enemies_remaining ++;
			}
		}
		
		for (i = 0; i < 30; i++) {
		
		posX = random_range(0 + 16, room_height - 16);
		posY = random_range(0 + 16, room_height - 16);
		
		with (instance_create_depth(posX, posY, 0, obj_npc)) {
				set_npc_type(npc_types.civ_test);
				npc_faction = factions.civ;
			}
		}
		
		with (instance_create_depth(random_range(128, room_width - 128), random_range(128, room_height - 128) , 0, obj_npc)) {
			set_npc_type(npc_types.pirate_boss);
			npc_faction = factions.pirate;
			global.enemies_remaining++;
		}
		break;
}