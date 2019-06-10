/// @arg0 attack_type
// Register attack types
enum npc_attack_types {
	shoot,
	create_drones,
	heal_other
}
var attack_type = argument0;
if (can_shoot) {
	switch (attack_type) {
		case npc_attack_types.shoot:
			with (instance_create_depth(x + lengthdir_x(15, image_angle), y + lengthdir_y(15, image_angle), 0, obj_bullet)) {
				sprite_index = registry.spr_bullets;
				image_index = 1;
				image_speed = 0;
				image_xscale = 2;
				image_yscale = 2;
				speed = other.bullet_speed;
				direction = other.image_angle + random_range(25 * obj_npc.accuracy, -25 * obj_npc.accuracy);
				image_angle = direction;
				bullet_type = bullet_types.pirate;
				hit_bullet = weighted_chance(other.accuracy);
				bullet_damage = other.dmg;
			}
			can_shoot = false;
			alarm[1] = room_speed / attack_speed;
		break;
		case npc_attack_types.create_drones:
			if (spawn_amount != 0) {
				with (instance_create_depth(x + random_range(-128, 128), y + random_range(-128, 128), 0, obj_npc)) {
					set_npc_type(npc_types.pirate_defense_drone);
					health_percent = 100;
				}
				spawn_amount--;
			}
			can_shoot = false;
			alarm[1] = room_speed / attack_speed;
		break;
	}
}