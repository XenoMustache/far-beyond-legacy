draw_set_font(fnt_ui);
if (mouse_hover) {
	if (show_button) {
		if (size = 1)
			draw_sprite_ext(registry.spr_sm_button, 0, button_x, button_y, 1, 1, image_angle, image_blend, image_alpha);
		else if (size = 2)
			draw_sprite_ext(registry.spr_med_button, 0, button_x, button_y, 1, 1, image_angle, image_blend, image_alpha);
	}
	draw_set_color(text_offset_color);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(button_x, button_y + 5, string_upper(button_text));
} else {
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(button_x, button_y + 5, string_upper(button_text));
}
if (global.debug_show_extra_data) {
	draw_set_color(c_green);
	draw_rectangle(button_x - (button_width / 2), button_y - (button_height / 2), button_x + (button_width / 2), button_y + (button_height / 2), true);	
}
