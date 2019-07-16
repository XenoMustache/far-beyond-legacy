var c_background = make_color_rgb(32,33,34);
var c_gradient = make_color_rgb(68,70,72);
var c_text = make_color_rgb(113,172,221);
var c_textbox = make_color_rgb(19,20,21);
var c_textbox_outline = make_color_rgb(103,106,109);
var window_width = global.display_width;
var window_height = global.display_height;
var width;
var height;
var title;
var content;
if (display_message) {
	switch (message_type) {
		case "message_start":
			width = 500;
			height = 500;
			title = "Lorem ipsum";
			content = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis blandit turpis cursus in hac habitasse platea dictumst quisque. Nunc sed id semper risus in hendrerit gravida. Diam maecenas sed enim ut sem. Ultricies lacus sed turpis tincidunt. At quis risus sed vulputate odio ut. Blandit turpis cursus in hac habitasse. Ac auctor augue mauris augue neque gravida in fermentum. Blandit turpis cursus in hac. Sit amet consectetur adipiscing elit pellentesque habitant morbi. Tincidunt eget nullam non nisi est sit amet. Mauris ultrices eros in cursus turpis massa. Auctor elit sed vulputate mi sit amet. Sed vulputate odio ut enim blandit volutpat. Integer eget aliquet nibh praesent tristique magna sit amet purus. Varius vel pharetra vel turpis nunc eget lorem.";
			draw_set_color(c_background);
			draw_set_alpha(0.8);
			draw_rectangle_color((window_width / 2) - (width / 2), (window_height / 2) - (height / 2), (window_width / 2) + (width / 2), (window_height / 2) + (height / 2), c_gradient, c_background, c_background, c_background, false);
			draw_set_color(c_textbox_outline);
			draw_rectangle((window_width / 2) - (width / 2) + 15, (window_height / 2) - (height / 2) + 40, (window_width / 2) + (width / 2) - 15, (window_height / 2) + (height / 2) - 50, true);
			draw_set_color(c_textbox);
			draw_set_alpha(0.6);
			draw_rectangle((window_width / 2) - (width / 2) + 16, (window_height / 2) - (height / 2) + 41, (window_width / 2) + (width / 2) - 16, (window_height / 2) + (height / 2) - 51, false);
			draw_set_alpha(1);
			draw_set_font(fnt_ui_title);
			draw_set_halign(fa_center);
			draw_set_color(c_white);
			draw_text((window_width / 2), (window_height / 2) - (height / 2) - 2, string(title));
			draw_set_color(c_text);
			draw_set_font(fnt_ui);
			draw_set_halign(fa_left);
			draw_text_ext((window_width / 2) - (width / 2) + 20, (window_height / 2) - (height / 2) + 40, string(content), 18, width - 50);
		break;
	}
}
