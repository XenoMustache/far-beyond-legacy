if (global.game_paused) exit;
switch (hazard_type) {
	case "small_asteroid_field":
		if (instance_exists(obj_player_ship)) {
			if (weighted_chance(hazard_chance)) {
				obj_player_ship.ship_hull -= hazard_dmg;
				obj_player_ship.hit = true;
				obj_player_ship.alarm[1] = room_speed * obj_player_ship.damage_cooldown;
				show_debug_message("player damage");
			} else show_debug_message("player miss");
		}
	break;
}
alarm[0] = -1;