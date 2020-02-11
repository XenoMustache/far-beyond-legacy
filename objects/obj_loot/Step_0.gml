if (global.game_paused) exit;

if (distance_to_object(obj_player_ship) < 64) {
	move_towards_point(obj_player_ship.x, obj_player_ship.y, 4);
	with led_effect {move_towards_point(obj_player_ship.x, obj_player_ship.y, 4);}
}