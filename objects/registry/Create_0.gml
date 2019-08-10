// TODO Changelog - NEXT RELEASE
// TODO Attack emitter object
// TODO Dynamic attack damage / critical attacks
// TODO Pirate waves and dynamic spawnpoints
// TODO Resources
// TODO Abilities
randomize();
global.git_tag = "proto-pre-alpha-v0.6";
global.debug_show_extra_data = false;
global.player_lives = 3;
global.console_open = false;
global.enemies_remaining = 0;
global.god_mode = false;
global.civ_disposition = 50;
global.pirate_disposition = -100;
global.game_paused = false;
window_set_caption("Far Beyond " + global.git_tag);
audio_stop_all();
spr_small_ships = sprite_add("assets/textures/small_ships.png", 6, false, false, 16, 16);
spr_small_ships_pirate = sprite_add("assets/textures/small_ships_pirate.png", 3, false, false, 16, 16);
spr_bullets = sprite_add("assets/textures/bullets.png", 2, false, false, 16, 16);
spr_backgrounds = sprite_add("assets/textures/background.png", 1, false, false, 128, 128);
spr_effects = sprite_add("assets/textures/effects.png", 1, false, false, 16, 16);
spr_capsule = sprite_add("assets/textures/capsule.png", 2, false, false, 8, 8);
spr_sm_button = sprite_add("assets/textures/sm_button.png", 1, false, false, 80, 15);
spr_med_button = sprite_add("assets/textures/med_button.png", 1, false, false, 160, 15);
spr_logo = sprite_add("assets/textures/logo.png", 1, false, false, 112, 16);
spr_status_bar = sprite_add("assets/textures/status_bar.png", 1, false, false, 34, 16);
spr_health_filled = sprite_add("assets/textures/health_filled.png", 1, false, false, 29, 4);
spr_shield_filled = sprite_add("assets/textures/shield_filled.png", 1, false, false, 26, 3);
switch (registry_type) {
	case 0:
		load_settings();
		show_settings = false;
		subtitle = "P   R   O   T   O   T   Y   P   E";
		draw_set_halign(fa_middle);
		c_rainbow = make_color_hsv((get_timer()) mod 255,255,255);
		if (global.show_notice) {
			disclaimer = create_message();
			disclaimer.message_type = "disclaimer";
			buttons_exist = false;
			alarm[1] = room_speed * 10;
		} else alarm[1] = 1;
	break;
	case 1:
		audio_stop_all();
		global.game_paused = true;
		var music = audio_emitter_create();
		audio_emitter_gain(music, global.volume_music);
		audio_play_sound_on(music, snd_3SFU, true, 1);
		start_message = create_message();
		start_message.message_type = "message_start";
		message_button = create_button("Close", display_get_gui_width() / 2, (display_get_gui_height() / 2) + 80, 1);
		player_spawn = instance_create_depth(room_width / 2, room_height / 2, 0, obj_event_point);
		player_spawn.point_type = point_types.player_spawn;
		instance_create_depth(0, 0, 0, control_handler);
		instance_create_depth(0, 0, 0, ui_handler);
		instance_create_depth(room_width / 2, room_height / 2, 0, obj_camera_controller);
		control_handler.mouse_locked = false;
		background_layer = layer_get_id("Background");
		background_1 = layer_background_get_id(background_layer);
		layer_background_sprite(background_1, spr_backgrounds);
		for (i = 0; i < 10; i++) {
			posX = random_range(0 + 16, room_height - 16);
			posY = random_range(0 + 16, room_height - 16);
			with (instance_create_depth(posX, posY, 0, obj_npc)) {
				set_npc_type(npc_types.pirate_test);
				npc_faction = factions.pirate;
				global.enemies_remaining ++;
			}
		}
		//for (i = 0; i < 30; i++) {
		//posX = random_range(0 + 16, room_height - 16);
		//posY = random_range(0 + 16, room_height - 16);
		//with (instance_create_depth(posX, posY, 0, obj_npc)) {
		//		set_npc_type(npc_types.civ_test);
		//		npc_faction = factions.civ;
		//	}
		//}
		//with (instance_create_depth(random_range(128, room_width - 128), random_range(128, room_height - 128) , 0, obj_npc)) {
		//	set_npc_type(npc_types.pirate_boss);
		//	npc_faction = factions.pirate;
		//	global.enemies_remaining++;
		//}
	break;
}
// TODO Chat system - LATER RELEASE