show_debug_message("countdown");
if (global.game_paused) exit;
switch (hazard_type) {
	case "small_asteroid_field":
		if (instance_exists(obj_player_ship)) {
			if (weighted_chance(hazard_chance)) obj_player_ship.ship_hull -= hazard_dmg;
		}
	break;
}
alarm[0] = -1;