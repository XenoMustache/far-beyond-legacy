/// @arg0 width
/// @arg1 height
/// @arg2 type
/// @arg3 title
/// @arg4 content
var width = argument0;
var height = argument1;
var type = argument2;
var title = argument3;
var content = argument4;
var show_message_content = true;
var c_background = make_color_rgb(32,33,34);
var c_gradient = make_color_rgb(68,70,72);
var c_text = make_color_rgb(113,172,221);
var c_textbox = make_color_rgb(19,20,21);
var c_textbox_outline = make_color_rgb(103,106,109);
switch (type) {
	case "":
	break;
}
if (show_message_content) {
	draw_set_color(c_background);
	draw_set_alpha(0.8);
	draw_rectangle_color((window_get_width() / 2) - (width / 2), (window_get_height() / 2) - (height / 2), (window_get_width() / 2) + (width / 2), (window_get_height() / 2) + (height / 2), c_gradient, c_background, c_background, c_background, false);
	draw_set_color(c_textbox_outline);
	draw_rectangle((window_get_width() / 2) - (width / 2) + 15, (window_get_height() / 2) - (height / 2) + 40, (window_get_width() / 2) + (width / 2) - 15, (window_get_height() / 2) + (height / 2) - 50, true);
	draw_set_color(c_textbox);
	draw_set_alpha(0.6);
	draw_rectangle((window_get_width() / 2) - (width / 2) + 16, (window_get_height() / 2) - (height / 2) + 41, (window_get_width() / 2) + (width / 2) - 16, (window_get_height() / 2) + (height / 2) - 51, false);
	draw_set_alpha(1);
	draw_set_font(fnt_ui_title);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_text((window_get_width() / 2) - (height / 2) + 10, (window_get_height() / 2) - (height / 2) - 2, string(title));
	draw_set_color(c_text);
	draw_set_font(fnt_ui);
	draw_set_halign(fa_left);
	draw_text_ext((window_get_width() / 2) - (width / 2) + 20, (window_get_height() / 2) - (height / 2) + 40, string(content), 16, width - 50);
}