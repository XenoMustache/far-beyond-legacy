ini_open("settings.ini");
var is_fullscreen = ini_read_real("Graphics", "fullscreen", false);
var effect_volume = ini_read_real("Audio", "effect_volume", 0.01);
var music_volume = ini_read_real("Audio", "music_volume", 0.1);
var sensitivity = ini_read_real("Controls", "sensitivity", 0.5);
var show_notice = ini_read_real("Misc", "show_notice", true);
var mute_all_sounds = ini_read_real("Audio", "mute_all_sounds", false);
var mute_music = ini_read_real("Audio", "mute_music", false);
var mute_effects = ini_read_real("Audio", "mute_effects", false);
ini_close()
window_set_fullscreen(is_fullscreen);
global.volume_effect = effect_volume;
global.volume_music = music_volume;
global.player_sensitivity = sensitivity;
global.show_notice = show_notice;
global.mute_all = mute_all_sounds;
global.mute_music = mute_music;
global.mute_effects = mute_effects;