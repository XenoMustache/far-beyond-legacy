draw_set_font(fnt_ui);
if (mouse_hover) {
	draw_sprite_ext(registry.spr_sm_button, 0, button_x, button_y, button_x_scale, button_y_scale, image_angle, image_blend, image_alpha);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(button_x, button_y + 5, string(button_text));
} else {
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(button_x, button_y + 5, string(button_text));
}
if (global.debug_show_extra_data) {
	draw_set_color(c_green);
	draw_rectangle(button_x - (button_width / 2), button_y - (button_height / 2), button_x + (button_width / 2), button_y + (button_height / 2), true);	
}
