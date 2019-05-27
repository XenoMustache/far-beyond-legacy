/// @arg0 attack_type
// Register attack types
enum npc_attack_types {
	shoot,
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
				speed = obj_npc.bullet_speed;
				direction = other.image_angle + random_range(25 * obj_npc.accuracy, -25 * obj_npc.accuracy);
				image_angle = direction;
				bullet_type = bullet_types.pirate;
				hit_bullet = choose(true, false);
				bullet_damage = obj_npc.dmg;
			}
			can_shoot = false;
			alarm[1] = room_speed / attack_speed;
		break;
		case npc_attack_types.heal_other:
			can_shoot = false;
			alarm[1] = room_speed / attack_speed;
		break;
	}
}