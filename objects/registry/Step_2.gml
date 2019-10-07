var rm = room_get_name(room);
switch (rm) {
	case "rm_title":
		if (show_settings) {
			if (button1.button_clicked) {
				global.show_notice = false;
				room_restart();
			}
		}
	break;
}