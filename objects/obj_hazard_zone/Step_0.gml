switch (hazard_type) {
	case "small_asteroid_field":
	if (hazard_shape == "circle") {
		if (!hazard_inverted)
			if (collision_circle(x, y, hazard_radius, obj_player_ship, false, true)) player_inside = true;
		else
			if (!collision_circle(x, y, hazard_radius, obj_player_ship, false, true)) player_inside = true;
	}
	if (player_inside && alarm[0] = 0) alarm[0] = hazard_checktime;
	break;
}