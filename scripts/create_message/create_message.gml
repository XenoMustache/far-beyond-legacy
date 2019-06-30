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
draw_set_color(c_black);
draw_rectangle((window_get_width() / 2) - (width / 2), (window_get_height() / 2) - (height / 2), (window_get_width() / 2) + (width / 2), (window_get_height() / 2) + (height / 2), false);
switch (type) {
	case "":
	break;
}
draw_set_color(c_white);
draw_set_font(fnt_ui_title);
draw_set_halign(fa_center);
draw_text(window_get_width() / 2, (window_get_height() / 2) - (height / 2), string(title));
draw_set_font(fnt_ui);
draw_set_halign(fa_left);
draw_text_ext((window_get_width() / 2) - (width / 2) + 10, (window_get_height() / 2) - (height / 2) + 40, string(content), 20, width - 10);