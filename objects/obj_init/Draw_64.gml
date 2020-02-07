/// @desc Draw title screen
var rm = room_get_name(room);

switch (rm) {
	case "rm_title":
		if (buttons_exist) {
			draw_set_alpha(1);
			draw_set_color(c_white);
			draw_set_font(fnt_ui);
			logo.image_blend = c_rainbow;
		}
	break;
}