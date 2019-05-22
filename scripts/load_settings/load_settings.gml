if (file_exists("settings.ini")) {
	ini_open("settings.ini");
	var is_fullscreen = ini_read_real("Graphics", "fullscreen", false);
	ini_close()
	window_set_fullscreen(is_fullscreen);
}