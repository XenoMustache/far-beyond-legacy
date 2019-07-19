switch (registry_type) {
	case 0:
		if (buttons_exist) {
			draw_set_alpha(1);
			draw_set_color(c_white);
			draw_set_font(fnt_ui);
			draw_set_halign(fa_middle);
			draw_text(global.display_width / 2, global.display_height / 2 + 80, "P   R   O   T   O   T   Y   P   E");
			logo.image_blend = c_rainbow;
		}
	break;
	case 1:
	break;
}