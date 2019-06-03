/// @desc Update
// Get directives
// TODO Pirates attack civillians
// TODO Civillians flee players and pirates
// TODO Boss heal other behvaior
if (npc_type == npc_types.pirate_defense_drone) {
	if (owner != undefined || owner != pointer_null)
		var owner_exists = true;
	else owner_exists = false;
}
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
		target_exist = true;
		target_x = obj_player_ship.x;
		target_y = obj_player_ship.y;
		move_towards_point(target_x, target_y, spd);
		if (distance_to_point(target_x, target_y) < 128) speed = 0;
		if (distance_to_object(obj_player_ship) < 512)
			if (npc_type == npc_types.pirate_test)
				ai_state = ai_directive.wander;
			else if (npc_type == npc_types.pirate_defense_drone)
				ai_state = ai_directive.attack;
			else if (npc_type == npc_types.pirate_boss)
				ai_state = ai_directive.seek_player;
		npc_attack(attack_type);
		if(npc_type != npc_types.pirate_defense_drone || npc_type != npc_types.pirate_boss)
			if (ship_hull <= 25) ai_state = ai_directive.flee;
		// TODO Add retreat behavior in place of flee behavior for pirates
	break;
	case ai_directive.flee:
		can_shoot = false;
		if (distance_to_object(obj_player_ship) < 256) {
			playerdirection = point_direction(x,y, obj_player_ship.x, obj_player_ship.y);
			direction = playerdirection + 180;
			image_angle = direction;
			speed = spd + 2;
		} else if (npc_type == npc_types.pirate_defense_drone)
			ai_state = ai_directive.attack;	
		else if (npc_type == npc_types.pirate_boss)
			ai_state = ai_directive.seek_player;
		else ai_state = ai_directive.wander;
	break;
	case ai_directive.seek_player:
		target_exist = true;
		target_x = obj_player_ship.x;
		target_y = obj_player_ship.y;
		move_towards_point(target_x, target_y, spd);
		if (distance_to_point(target_x, target_y) < 64) {
			speed = 0;
				if (alarm[0] = -1) alarm[0] = room_speed * 5;
		}
		if (npc_faction == factions.pirate)
			if (distance_to_object(obj_player_ship) < 128) ai_state = ai_directive.attack;
	break;
}
// Manage health
if (ship_hull <= 0) instance_destroy();
if (shield <= 0) has_shield = false;
if (can_rechage_shield) {
	has_shield = true;
	shield += recharge_rate;
}
if (shield >= shield_max) can_rechage_shield = false;
health_percent = (ship_hull / ship_hull_max) * 100;
shield_percent = (shield / shield_max) * 100;
// Essential movement
if (target_exist) image_angle -= angle_difference(image_angle, point_direction(x, y, target_x, target_y)) * rotation_speed; 
else image_angle = image_angle;
if (speed != 0) is_moving = true; else is_moving = false;