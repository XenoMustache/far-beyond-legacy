/// @desc Hover and Debug
draw_set_font(fnt_ui);
draw_set_alpha(text_alpha);

if (mouse_hover || activated_toggle) {
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
