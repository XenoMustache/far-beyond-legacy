// Delete and create settings file with new data
if (file_exists("settings.ini")) file_delete("settings.ini");
ini_open("settings.ini");
var is_fullscreen = window_get_fullscreen();
var display_width = global.display_width;
var display_height = global.display_height;
ini_write_real("Graphics", "fullscreen", is_fullscreen);
ini_write_real("Graphics", "display_width", display_width);
ini_write_real("Graphics", "display_height", display_height);
ini_close();