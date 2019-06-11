/// @desc Bullet Detection
if (other.bullet_type == bullet_types.pirate) {
	if (other.hit_bullet) {
		if (can_take_damage) {
			if (has_shield) {
				var taken_damage = other.bullet_damage;
				if(shield >= taken_damage) {
					shield -= other.bullet_damage;
					can_rechage_shield = false;
				} else {
					taken_damage -= shield;
					shield = 0;
					ship_hull -= taken_damage;
				}
				alarm[1] = room_speed * damage_cooldown;
			if (alarm[2] = -1) alarm[2] = room_speed * recharge_cooldown;
			} else {
				ship_hull -= other.bullet_damage;
				can_rechage_shield = false;
				alarm[1] = room_speed * damage_cooldown;
				if (alarm[2] = -1) alarm[2] = room_speed * recharge_cooldown;
				hit = true;
			}
		}
	}
}