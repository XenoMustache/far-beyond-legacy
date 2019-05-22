/// @desc Update
// Set target
target_x = obj_player_target.x;
target_y = obj_player_target.y;
// Get input
if (keyboard_check(vk_space) && can_shoot == true) {
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
}
// Move player
if (target_x != pointer_null && target_y != pointer_null) {
	if (point_distance(x, y, target_x, target_y) > spd) 
	    move_towards_point(target_x, target_y, spd);
	else speed = 0;
	image_angle -= angle_difference(image_angle, point_direction(x, y, target_x, target_y)) * rotation_speed;
}
// Check movement
if (speed != 0) is_moving = true; else is_moving = false;
// Manage health and shields
if (ship_hull <= 0) room_restart();
if (shield <= 0) has_shield = false;
if (can_rechage_shield) {
	has_shield = true;
	shield += recharge_rate;
}
if (shield >= shield_max) can_rechage_shield = false;
health_percent = (ship_hull / ship_hull_max) * 100;
shield_percent = (shield / shield_max) * 100;