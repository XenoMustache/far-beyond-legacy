var rm = room_get_name(room);
switch (rm) {
	case "rm_title":
		if (show_settings) {
			if (button1.button_clicked) {
				global.show_notice = false;
				room_restart();
			}
			if (button2.button_clicked) {
				//write_settings();
				room_restart();
			}
			if (button_audio.button_clicked) {
				button_controls.activated_toggle = false;
				button_graphics.activated_toggle = false;
				button_misc.activated_toggle = false
				//var test = instance_create_depth(100, 100, -1, obj_checkbox);
				//test.checkbox_offset_color = c_rainbow;
			}
			if (button_controls.button_clicked) {
				button_audio.activated_toggle = false;
				button_graphics.activated_toggle = false;
				button_misc.activated_toggle = false
			}
			if (button_graphics.button_clicked) {
				button_audio.activated_toggle = false;
				button_controls.activated_toggle = false;
				button_misc.activated_toggle = false
			}
			if (button_misc.button_clicked) {
				button_controls.activated_toggle = false;
				button_graphics.activated_toggle = false;
				button_audio.activated_toggle = false
			}
		}
		if (show_changelog) {
			if (button_close_changelog.button_clicked) {
				global.show_notice = false;
				room_restart();
			}
		}
	break;
}