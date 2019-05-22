// Delete and create settings file with new data
if (file_exists("settings.ini")) file_delete("settings.ini");
ini_open("settings.ini");
var is_fullscreen = window_get_fullscreen();
ini_write_real("Graphics", "fullscreen", is_fullscreen);
ini_close();