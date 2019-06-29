ini_open("settings.ini");
var is_fullscreen = ini_read_real("Graphics", "fullscreen", false);
var display_width = ini_read_real("Graphics", "display_width", global.default_display_width);
var display_height = ini_read_real("Graphics", "display_height", global.default_display_height);
var effect_volume = ini_read_real("Audio", "effect_volume", 0.08);
var music_volume = ini_read_real("Audio", "music_volume", 0.15);
ini_close()
window_set_fullscreen(is_fullscreen);
global.display_width = display_width;
global.display_height = display_height;
global.volume_effect = effect_volume;
global.volume_music = music_volume;