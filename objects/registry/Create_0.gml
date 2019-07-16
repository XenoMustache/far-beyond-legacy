// Randomize game values
randomize();
// Set game data
global.git_tag = "proto-pre-alpha-v0.5";
global.default_display_width = 1024;
global.default_display_height = 768;
global.debug_show_extra_data = false;
global.player_lives = 3;
global.console_open = false;
global.enemies_remaining = 0;
global.god_mode = false;
window_set_caption("Far Beyond " + global.git_tag);
// Load game settings
load_settings();
// Play music
audio_stop_all();
var music = audio_emitter_create();
audio_emitter_gain(music, global.volume_music);
audio_play_sound_on(music, snd_3SFU, true, 1);
start_message = create_message();
start_message.message_type = "message_start";
message_button = create_button(1, 1, "Close", global.display_width / 2, (global.display_height / 2) + 80);
// Register External Assets
spr_small_ships = sprite_add("assets/textures/small_ships.png", 6, false, false, 16, 16);
spr_small_ships_pirate = sprite_add("assets/textures/small_ships_pirate.png", 3, false, false, 16, 16);
spr_bullets = sprite_add("assets/textures/bullets.png", 2, false, false, 16, 16);
spr_backgrounds = sprite_add("assets/textures/background.png", 1, false, false, 128, 128);
spr_effects = sprite_add("assets/textures/effects.png", 1, false, false, 16, 16);
spr_capsule = sprite_add("assets/textures/capsule.png", 2, false, false, 8, 8);
spr_sm_button = sprite_add("assets/textures/sm_button.png", 1, false, false, 80, 15);
//spr_power_up = sprite_add("assets/textures/capsule.png", 2, false, false, 8, 8);
// Create objects
player_spawn = instance_create_depth(room_width / 2, room_height / 2, 0, obj_event_point);
player_spawn.point_type = point_types.player_spawn;
player_spawn.trigger = true;
instance_create_depth(player_spawn.x, player_spawn.y, 0, obj_camera);
instance_create_depth(0, 0, 0, control_handler);
instance_create_depth(0, 0, 0, ui_handler);
// Create background
background_layer = layer_get_id("Background");
background_1 = layer_background_get_id(background_layer);
layer_background_sprite(background_1, spr_backgrounds);
// Spawns civillians and pirates
//with (instance_create_depth(room_width / 2, room_height / 2, 0, obj_npc)) {
//		set_npc_type(npc_types.pirate_test);
//		npc_faction = factions.pirate;
//}
//for (i = 0; i < 10; i++) {
//	posX = random_range(0 + 16, room_height - 16);
//	posY = random_range(0 + 16, room_height - 16);
//	with (instance_create_depth(posX, posY, 0, obj_npc)) {
//		set_npc_type(npc_types.pirate_test);
//		npc_faction = factions.pirate;
//		global.enemies_remaining++;
//	}
//}
for (i = 0; i < 30; i++) {
	posX = random_range(0 + 16, room_height - 16);
	posY = random_range(0 + 16, room_height - 16);
	with (instance_create_depth(posX, posY, 0, obj_npc)) {
		set_npc_type(npc_types.civ_test);
		npc_faction = factions.civ;
	}
}
//with (instance_create_depth(random_range(128, room_width - 128), random_range(128, room_height - 128) , 0, obj_npc)) {
//	set_npc_type(npc_types.pirate_boss);
//	npc_faction = factions.pirate;
//	global.enemies_remaining++;
//}
// TODO Chat system - LATER RELEASE
// TODO Mesasge/dialogue boxes - NEXT RELEASE