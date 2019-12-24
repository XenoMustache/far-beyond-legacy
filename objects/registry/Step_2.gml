var rm = room_get_name(room);
switch (rm) {
	case "rm_title":
		if (show_settings) {
			if (button1.button_clicked) {
				global.show_notice = false;
				room_restart();
			}
			if (button2.button_clicked) {
				write_settings();
				room_restart();
			}
			if (button_audio.button_clicked) {
				button_controls.activated_toggle = false;
				button_graphics.activated_toggle = false;
				button_misc.activated_toggle = false
				var show_audio = true;
				show_controls = false;
				show_graphics = false;
				show_misc = false;
			}
			if (button_controls.button_clicked) {
				button_audio.activated_toggle = false;
				button_graphics.activated_toggle = false;
				button_misc.activated_toggle = false
				show_audio = false;
				var show_controls = true;
				show_graphics = false;
				show_misc = false;
			}
			if (button_graphics.button_clicked) {
				button_audio.activated_toggle = false;
				button_controls.activated_toggle = false;
				button_misc.activated_toggle = false
				show_audio = false;
				show_controls = false;
				var show_graphics = true;
				show_misc = false;
			}
			if (button_misc.button_clicked) {
				button_controls.activated_toggle = false;
				button_graphics.activated_toggle = false;
				button_audio.activated_toggle = false
				show_audio = true;
				show_controls = false;
				show_graphics = false;
				var show_misc = true;
			}
			
			//if (show_audio) {
			//}
			//if (show_controls) {
			//}
			//if (show_graphics) {
			//}
			//if (show_misc) {
			//}
		}
		if (show_changelog) {
			if (button_close_changelog.button_clicked) {
				global.show_notice = false;
				room_restart();
			}
		}
	break;
}