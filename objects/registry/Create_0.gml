/// @desc Initialize Game
// Randomize game values
randomize();
// Set game data
global.git_tag = "proto-pre-alpha-v0.3";
global.default_display_width = 1024;
global.default_display_height = 768;
global.debug_show_extra_data = false;
global.player_lives = 3;
window_set_caption("Far Beyond " + global.git_tag);
// Load game settings
load_settings();
// Register External Assets
spr_small_ships = sprite_add("assets/textures/small_ships.png", 3, true, false, 16, 16);
spr_small_ships_pirate = sprite_add("assets/textures/small_ships_pirate.png", 2, true, false, 16, 16);
spr_bullets = sprite_add("assets/textures/bullets.png", 2, false, false, 16, 16);
spr_backgrounds = sprite_add("assets/textures/background.png", 1, false, false, 128, 128);
// Create objects
instance_create_depth(room_width / 2, room_height / 2, 0, obj_player_ship);
instance_create_depth(obj_player_ship.x, obj_player_ship.y, 0, obj_player_target);
instance_create_depth(obj_player_ship.x, obj_player_ship.y, 0, obj_camera);
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
for (i = 0; i < 10; i++) {
	posX = random_range(0 + 16, room_height - 16);
	posY = random_range(0 + 16, room_height - 16);
	with (instance_create_depth(posX, posY, 0, obj_npc)) {
		set_npc_type(npc_types.pirate_test);
		npc_faction = factions.pirate;
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
with (instance_create_depth(room_height / 2, 500, 0, obj_npc)) {
	set_npc_type(npc_types.pirate_boss);
	npc_faction = factions.pirate;
}
// TODO Chat system
// TODO Mesasge/dialogue boxes