/// @desc Draw hazard
if (global.debug_show_extra_data) {
	switch (hazard_type) {
		case "small_asteroid_field":
			if (hazard_shape == "circle") {
				if (hazard_inverted) draw_set_color(c_green);
				else draw_set_color(c_red);
				draw_circle(x, y, hazard_radius, true);
			}
		break;
	}
}