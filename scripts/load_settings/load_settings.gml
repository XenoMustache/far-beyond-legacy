ini_open("settings.ini");
var is_fullscreen = ini_read_real("Graphics", "fullscreen", false);
var display_width = ini_read_real("Graphics", "display_width", global.default_display_width);
var display_height = ini_read_real("Graphics", "display_height", global.default_display_height);
ini_close()
window_set_fullscreen(is_fullscreen);
global.display_width = display_width;
global.display_height = display_height;