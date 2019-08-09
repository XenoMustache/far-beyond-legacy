switch (registry_type) {
	case 0:
		if (buttons_exist) {
			draw_set_alpha(1);
			draw_set_color(c_white);
			draw_set_font(fnt_ui);
			draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 + 80, subtitle);
			logo.image_blend = c_rainbow;
		}
	break;
	case 1:
	break;
}