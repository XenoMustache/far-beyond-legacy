/// @desc State machine
// TODO Fix NPC stopping issues
// TODO NPC's interact with hazard
if (global.game_paused) { speed = 0; exit;}

switch (ai_state) {
	case ai_state.wander:
		if (!target_exist) {
			target_exist = true;
			target_x = random_range(128, room_width - 128);
			target_y = random_range(128, room_height - 128);
		}
		
		speed = lerp(speed, spd / 2, 0.05);
		
		if (distance_to_point(target_x, target_y) < 64) {
			speed = lerp(speed, 0, 0.04);
				if (alarm[0] = -1) alarm[0] = room_speed * 5;
		}
		
		if (npc_faction == factions.civ && global.civ_reputation < 0)
				if (distance_to_object(obj_player_ship) < 128) ai_state = ai_state.flee; 
		
		if (npc_faction == factions.pirate && distance_to_object(obj_player_ship) > 128) {
			with (instance_nearest_notme(x, y, obj_npc)) {
				if (npc_faction == factions.civ && distance_to_object(other) < 128) {
					other.civ_target = id;
					other.target_x = x;
					other.target_y = y;
					other.ai_state = ai_state.attack_civ;
				}
			}
		} else if (npc_faction == factions.pirate && global.pirate_reputation < 0)
				if (distance_to_object(obj_player_ship) < 128) ai_state = ai_state.attack;
		break;
	case ai_state.attack:
		alarm[0] = -1;
		
		if (instance_exists(obj_player_ship)) {
			target_exist = true;
			target_x = obj_player_ship.x;
			target_y = obj_player_ship.y;
		
			speed = lerp(speed, spd, 0.05);
		
			if (distance_to_point(target_x, target_y) < 128) speed = lerp(speed, 0, 0.04);
		
			if (distance_to_object(obj_player_ship) < 512)
				if (npc_type == npc_types.pirate_test) ai_state = ai_state.wander;
				else if (npc_type == npc_types.pirate_defense_drone || npc_type == npc_types.pirate_boss) 
					ai_state = ai_state.seek_player;
		
			npc_attack(attack_type);
		
			if (npc_type != npc_types.pirate_defense_drone || npc_type != npc_types.pirate_boss)
				if (ship_hull <= 25) ai_state = ai_state.flee;
		
			if (obj_player_ship.ship_hull <= 0) {
				target_exist = false;
		
			if (npc_type == npc_types.pirate_test)
					ai_state = ai_state.wander;			
				else if (npc_type == npc_types.pirate_boss || npc_type == npc_types.pirate_defense_drone)
					ai_state = ai_state.seek_player;
			}
		} else {
			ai_state = ai_state.wander
		}
		break;
	case ai_state.flee:
		can_shoot = false;
		
		if (distance_to_object(obj_player_ship) < 256) {
			playerdirection = point_direction(x,y, obj_player_ship.x, obj_player_ship.y);
			
			direction = lerp(direction, -playerdirection, rotation_speed);
			image_angle = direction;
			speed = lerp(speed, spd + 0.5, 0.05);
		} else if (npc_type == npc_types.pirate_defense_drone) ai_state = ai_state.attack;	
		else if (npc_type == npc_types.pirate_boss) ai_state = ai_state.seek_player;
		else ai_state = ai_state.wander;
		break;
	case ai_state.seek_player:
	if (instance_exists(obj_player_ship)) {
		target_exist = true;
		target_x = obj_player_ship.x;
		target_y = obj_player_ship.y;
		
		speed = lerp(speed, spd, 0.05);
		
		if (distance_to_point(target_x, target_y) < 128) ai_state = ai_state.attack;
		
		if (distance_to_point(target_x, target_y) < 64)
			speed = lerp(speed, 0, 0.04);
	} else ai_state = ai_state.seek_player;
		break;
	case ai_state.attack_civ:
		alarm[0] = -1;
		speed = lerp(speed, spd + 0.5, 0.05);
		
		if (distance_to_point(target_x, target_y) < 128) speed = 0;
		
		if (distance_to_object(civ_target) < 512)
			
			if (npc_type == npc_types.pirate_test) ai_state = ai_state.wander;
			else if (npc_type == npc_types.pirate_defense_drone || npc_type == npc_types.pirate_boss) 
				ai_state = ai_state.seek_player;
			else if (distance_to_object(obj_player_ship) < 128 && global.pirate_reputation < 0) ai_state = ai_state.attack;
		
		npc_attack(attack_type);
		
		if (!instance_exists(civ_target)) {
			civ_target = noone;
			target_exist = false;
			
			if (npc_type == npc_types.pirate_test)
				ai_state = ai_state.wander;			
			else if (npc_type == npc_types.pirate_boss || npc_type == npc_types.pirate_defense_drone)
				ai_state = ai_state.seek_player;
		}
		break;
}

// Manage health
if (ship_hull <= 0) {
	if (npc_type == npc_types.pirate_defense_drone)
		if (instance_exists(parent_id)) parent_id.spawn_amount++;
	if (npc_faction == factions.pirate) global.enemies_remaining--;
	if (npc_faction != factions.civ && npc_type != npc_types.pirate_defense_drone) {
		var pirate_drop = weighted_chance(0.25);
		if (pirate_drop) { 
			var loot_drop = instance_create_depth(x, y, 0, obj_loot);
			loot_drop.loot = choose(loot_types.sm_hp);
		}
	}
	instance_destroy();
}

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
direction = image_angle;