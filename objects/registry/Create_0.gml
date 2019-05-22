/// @desc Initialize Game
// Load game settings
load_settings();
// Set game flags
global.debug_show_extra_data = true;
// Register External Assets
spr_small_ships = sprite_add("assets/textures/small_ships.png", 3, true, false, 16, 16);
spr_small_ships_pirate = sprite_add("assets/textures/small_ships_pirate.png", 2, true, false, 16, 16);
spr_bullets = sprite_add("assets/textures/bullets.png", 2, false, false, 16, 16);
spr_backgrounds = sprite_add("assets/textures/background.png", 1, false, false, 128, 128);
// Create objects
instance_create_depth(room_width / 2, room_height / 2, 0, obj_player_ship);
instance_create_depth(obj_player_ship.x, obj_player_ship.y, 0, obj_player_target);
instance_create_depth(room_width / 2, room_height / 2, 0, obj_camera);
instance_create_depth(room_width / 2, room_height / 2, 0, control_handler);
// Create background
background_layer = layer_get_id("Background");
background_1 = layer_background_get_id(background_layer);
layer_background_sprite(background_1, spr_backgrounds);
// Spawn pirates and civillians
for (i = 0; i < 10; i++) {
	randomize();
	posX = random_range(0 + 16, room_height - 16);
	posY = random_range(0 + 16, room_height - 16);
	with (instance_create_depth(posX, posY, 0, obj_npc)) {
		npc_type = npc_types.pirate_test;
	}
}
for (i = 0; i < 30; i++) {
	randomize();
	posX = random_range(0 + 16, room_height - 16);
	posY = random_range(0 + 16, room_height - 16);
	with (instance_create_depth(posX, posY, 0, obj_npc)) {
		npc_type = npc_types.civ_test;
	}
}