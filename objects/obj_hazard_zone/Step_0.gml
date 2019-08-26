if (global.game_paused) exit;
switch (hazard_type) {
	case "small_asteroid_field":
	if (hazard_shape == "circle") {
		if (instance_exists(obj_player_ship)) {
			hazard_dmg = obj_player_ship.ship_hull / 25;
			if (!hazard_inverted)
				if (collision_circle(x, y, hazard_radius, obj_player_ship, false, true)) player_inside = true;
				else player_inside = false;
			else
				if (!collision_circle(x, y, hazard_radius, obj_player_ship, false, true)) player_inside = true;
				else player_inside = false;
		}
	}
	if (instance_exists(obj_player_ship))
		if (player_inside && alarm[0] = -1 && !global.god_mode && !obj_player_ship.hit) alarm[0] = hazard_checktime;
	break;
}