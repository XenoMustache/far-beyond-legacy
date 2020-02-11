/// @desc Animation data
if (!destroy_message) {
	if (temp_w < width) temp_w += 20//30;
	if (temp_h < height && temp_w == width) temp_h += 20//30;
	if (temp_h == height && temp_w == width && alarm[0] == -1) alarm[0] = 30;
	if (display_text && text_alpha < 1) text_alpha += 0.025; 
} else {
	alarm[0] = 1;
	if (!display_text && text_alpha > 0) text_alpha -= 0.15;
	if (temp_h > 20 && text_alpha <= 0) temp_h -= 20//30;
	if (temp_w > 20 && temp_h == 20) temp_w -= 20//30;
	if (temp_h == 20 && temp_w == 20) instance_destroy(id);
}