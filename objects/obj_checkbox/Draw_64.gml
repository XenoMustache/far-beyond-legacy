if (mouse_hover) var draw_color = checkbox_offset_color;
else var draw_color = c_white;
draw_set_color(draw_color);
draw_rectangle(x - size / 2, y - size / 2, x + size / 2, y + size / 2, true);
if (!is_checked) var inner_color = c_black;
else var inner_color = draw_color;
draw_set_color(inner_color);
draw_rectangle((x + 4) - size / 2, (y + 4) - size / 2, (x - 4) + size / 2, (y - 4) + size / 2, false);