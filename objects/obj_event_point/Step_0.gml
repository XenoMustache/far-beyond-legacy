if (trigger) {
	switch (point_type) {
		case point_types.player_spawn:
			instance_create_depth(x, y, 0, obj_player_ship);
			alarm[0] = 1;
		break;
	}
}