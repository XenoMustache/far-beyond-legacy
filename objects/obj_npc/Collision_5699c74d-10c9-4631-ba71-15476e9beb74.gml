/// @desc Bullet Detection
if (other.bullet_type == bullet_types.player) {
	if (can_take_damage) {
		ship_hull -= 25;
		alarm[2] = room_speed * damage_cooldown;
	}
}