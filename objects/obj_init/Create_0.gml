/// @desc Create game initial data
load_settings();
gml_release_mode(true);

// Globals
global.git_tag = "proto-pre-alpha-v0.5.1";
global.debug_show_extra_data = false;
global.player_lives = 3;
global.player_credits = 300;
global.console_open = false;
global.enemies_remaining = 0;
global.god_mode = false;
global.civ_disposition = 50;
global.pirate_disposition = -100;
global.game_paused = false;
global.show_notice = false;

// Init
randomize();
window_set_caption("Far Beyond " + global.git_tag);
audio_stop_all();
instance_create_depth(x, y, depth, obj_camera);
room_goto_next();

// TODO Pirate waves and dynamic spawnpoints
// TODO Replace enum definitions of objects with strings/integers