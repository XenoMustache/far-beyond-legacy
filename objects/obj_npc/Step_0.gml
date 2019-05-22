/// @desc Update
// Get directives
// TODO Pirates attack civillians
// TODO Civillians flee players and pirates
// TODO Boss health regen behvaior
switch (ai_state) {
	case ai_directive.wander:
		if (!target_exist) {
			target_exist = true;
			target_x = random_range(128, room_width - 128);
			target_y = random_range(128, room_height - 128);
		}
		move_towards_point(target_x, target_y, spd / 2);
		if (distance_to_point(target_x, target_y) < 64) {
			speed = 0;
				if (alarm[0] = -1) alarm[0] = room_speed * 5;
		}
		if (npc_faction == factions.pirate)
			if (distance_to_object(obj_player_ship) < 128) ai_state = ai_directive.attack;
	break;
	case ai_directive.attack:
		alarm[0] = -1;
		target_x = obj_player_ship.x;
		target_y = obj_player_ship.y;
		move_towards_point(target_x, target_y, spd);
		if (distance_to_point(target_x, target_y) < 128) speed = 0;
		if (distance_to_object(obj_player_ship) < 512) ai_state = ai_directive.wander;
		if (can_shoot) {
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
			}
		if (ship_hull <= 25) {ai_state = ai_directive.flee;}
		// TODO Replace flee behavior with retreat behavior
	break;
	case ai_directive.flee:
		can_shoot = false;
		if (distance_to_object(obj_player_ship) < 256) {
			playerdirection = point_direction(x,y, obj_player_ship.x, obj_player_ship.y);
			direction = playerdirection + 180;
			image_angle = direction;
			speed = spd + 2;
		} else ai_state = ai_directive.wander;
	break;
}
// Manage health
if (ship_hull <= 0) instance_destroy();
health_percent = (ship_hull / ship_hull_max) * 100;
// Essential movement
if (target_exist)
	image_angle -= angle_difference(image_angle, point_direction(x, y, target_x, target_y)) * rotation_speed;
else image_angle = image_angle;
if (speed != 0) is_moving = true; else is_moving = false;