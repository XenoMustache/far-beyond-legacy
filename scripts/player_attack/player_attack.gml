/// @arg0 attack_type
// Register attack types
enum player_attack_types {
	shoot
}
var attack_type = argument0;
if (can_shoot) {
	switch (attack_type) {
		case npc_attack_types.shoot:
			with (instance_create_depth(x + lengthdir_x(10, image_angle), y + lengthdir_y(10, image_angle), 0, obj_bullet)) {
				sprite_index = registry.spr_bullets;
				image_index = 0;
				image_speed = 0;
				image_xscale = 2;
				image_yscale = 2;
				speed = obj_player_ship.bullet_speed;
				direction = other.image_angle + random_range(25 * obj_npc.accuracy, -25 * obj_npc.accuracy);
				image_angle = direction;
				bullet_type = bullet_types.player;
				hit_bullet = choose(true, true, true, false);
				bullet_dmg = obj_player_ship.bullet_damage;
			}
			can_shoot = false;
			alarm[0] = room_speed / attack_speed;
		break;
	}
}