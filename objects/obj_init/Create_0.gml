/// @desc Create game initial data
layer_force_draw_depth(true,0);
draw_set_colour(c_black);
load_settings();
gml_release_mode(true);

// Globals
global.git_tag = "proto-pre-alpha-v0.6";
global.debug_show_extra_data = false;
global.player_lives = 3; // Soon to be removed
global.player_credits = 300;
global.console_open = false;
global.enemies_remaining = 0;
global.god_mode = false;
global.civ_reputation = 50;
global.pirate_reputation = -100;
global.game_paused = false;
global.show_notice = false;
global.respawn_message = noone;
global.respawn_button = noone;
global.respawn_quit_button = noone;

// Init
randomize();
window_set_caption("Far Beyond " + global.git_tag);
audio_stop_all();
instance_create_depth(x, y, depth, obj_camera);
room_goto_next();

// TODO Pirate waves and dynamic spawnpoints
// TODO Replace enum definitions of objects with strings/integers