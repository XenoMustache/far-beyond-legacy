/// @desc Bullet Detection
if (other.bullet_type == bullet_types.player) {
	if (other.hit_bullet) {
		if (can_take_damage) {
			ship_hull -= obj_player_ship.bullet_damage;
			alarm[2] = room_speed * damage_cooldown;
		}
	}
}