// Delete and create settings file with new data
if (file_exists("settings.ini")) file_delete("settings.ini");
ini_open("settings.ini");
var is_fullscreen = window_get_fullscreen();
var effect_volume = global.volume_effect;
var music_volume = global.volume_music;
var player_sensitivity = global.player_sensitivity;
var show_notice = global.show_notice;
var mute_all_sounds = global.mute_all;
var mute_music = global.mute_music;
var mute_effects = global.mute_effects;
ini_write_real("Graphics", "fullscreen", is_fullscreen);
ini_write_real("Audio", "effect_volume", effect_volume);
ini_write_real("Audio", "music_volume", music_volume);
ini_write_real("Controls", "sensitivity", player_sensitivity);
//ini_write_real("Misc", "show_notice", show_notice);
ini_write_real("Audio", "mute_all_sounds", mute_all_sounds);
ini_write_real("Audio", "mute_music", mute_music);
ini_write_real("Audio", "mute_effects", mute_effects);
ini_close();