/// @param width
/// @param height
/// @param title
/// @param content
var width = argument0;
var height = argument1;
var title = argument2;
var content = argument3;

var c_header = make_color_rgb(29,29,29);
var window_width = display_get_gui_width();
var window_height = display_get_gui_height();

draw_set_alpha(1);
draw_set_color(c_header);
draw_rectangle((window_width / 2) - (width / 2) - 2, (window_height / 2) - (height / 2) - 2, (window_width / 2) + (width / 2) + 2, (window_height / 2) + (height / 2) + 2, false);
			
draw_set_color(c_black);
draw_rectangle((window_width / 2) - (width / 2), (window_height / 2) - (height / 2), (window_width / 2) + (width / 2), (window_height / 2) + (height / 2), false);
draw_rectangle_color((window_width / 2) - (width / 2) + 2, (window_height / 2) - (height / 2) + 2, (window_width / 2) + (width / 2) - 2, (window_height / 2) - (height / 2) + 38, c_header, c_header, c_header, c_header, false);
			
draw_set_font(fnt_ui_title);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text((window_width / 2), (window_height / 2) - (height / 2) + 5, string_upper(title));
			
draw_set_color(c_white);
draw_set_font(fnt_ui);
draw_set_halign(fa_left);
draw_text_ext((window_width / 2) - (width / 2) + 4, (window_height / 2) - (height / 2) + 45, string(content), 22, width - 6);