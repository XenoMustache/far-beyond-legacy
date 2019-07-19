var c_header = make_color_rgb(29,29,29);
var window_width = global.display_width;
var window_height = global.display_height;
var width;
var height;
var title;
var content;
draw_set_valign(fa_top);
if (display_message) {
	switch (message_type) {
		case "message_start":
			width = 500;
			height = 200;
			title = "Pirate invasion!";
			content = "Pirates are invading this sector! Use your ship to destroy the pirates, and their boss while defending civillians. You can collect health capsules and extra lives by destroying pirates. You win when the sector is clear.";
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
		break;
		case "disclaimer":
			width = 500;
			height = 140;
			title = "NOTICE";
			content = "You are playing a highly experimental build of the game. There will most certainly be bugs. Features in this build do not reflect the finished work. Data maybe be lost upon updating. You have been warned.";
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
		break;
	}
}
