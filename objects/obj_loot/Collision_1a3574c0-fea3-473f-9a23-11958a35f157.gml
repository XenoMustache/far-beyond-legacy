if (global.game_paused) exit;

switch (loot) {
	case loot_types.sm_hp:
		obj_player_ship.ship_hull += 25;
	break;
}

instance_destroy(led_effect);
instance_destroy();