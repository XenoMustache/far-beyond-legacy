/// @desc Bullet Detection
if (other.bullet_type == bullet_types.player) {
	if (other.hit_bullet) {
		if (can_take_damage) {
			ship_hull -= other.bullet_dmg;
			hit = true;
			if (npc_type == npc_types.pirate_test) ai_state = ai_directive.attack;
			alarm[2] = room_speed * damage_cooldown;
		}
	}
}