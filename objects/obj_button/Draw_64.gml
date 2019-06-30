/// @desc Draw button
draw_set_font(fnt_ui);
if (mouse_hover) {
	draw_set_color(c_white);
	draw_rectangle(button_x - (button_width / 2), button_y - (button_height / 2), button_x + (button_width / 2), button_y + (button_height / 2), false); 
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(button_x, button_y, string(button_text));
} else {
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(button_x, button_y, string(button_text));
}
