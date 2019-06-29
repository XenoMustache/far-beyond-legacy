// Delete and create settings file with new data
if (file_exists("settings.ini")) file_delete("settings.ini");
ini_open("settings.ini");
var is_fullscreen = window_get_fullscreen();
var display_width = global.display_width;
var display_height = global.display_height;
var effect_volume = global.volume_effect;
var music_volume = global.volume_music;
ini_write_real("Graphics", "fullscreen", is_fullscreen);
ini_write_real("Graphics", "display_width", display_width);
ini_write_real("Graphics", "display_height", display_height);
ini_write_real("Audio", "effect_volume", effect_volume);
ini_write_real("Audio", "music_volume", music_volume);
ini_close();