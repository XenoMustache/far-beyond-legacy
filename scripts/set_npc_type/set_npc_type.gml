///@arg0 npc_type
// Set variables according to NPC type
npc_type = argument0;

enum npc_types {
	pirate_test,
	pirate_boss,
	pirate_defense_drone,
	civ_test,
	civ_defense_drone
}

switch (npc_type) {
	case npc_types.pirate_test:
		ai_state = ai_state.wander;
		spd = 2;
		rotation_speed = 0.035;
		ship_hull_max = 100;
		ship_hull = ship_hull_max;
		attack_type = npc_attack_types.shoot;
		npc_faction = factions.pirate;
		attack_speed = 1;
		dmg = 25;
		has_shield = false;
		shield = 0;
		shield_max = 0;
		damage_cooldown = 0.5;
		bullet_speed = 5;
		accuracy = 0.3;
		shield_percent = 0;
		hit_chance = 0.5;
		break;
	case npc_types.pirate_boss:
		ai_state = ai_state.seek_player;
		spd = 1;
		rotation_speed = 0.01;
		ship_hull_max = 400;
		ship_hull = ship_hull_max;
		attack_type = npc_attack_types.create_drones;
		npc_faction = factions.pirate;
		attack_speed = 0.5;
		dmg = 4;
		has_shield = false;
		shield = 0;
		shield_max = 0;
		damage_cooldown = 0.5;
		bullet_speed = 5;
		accuracy = 0;
		spawn_amount = dmg;
		shield_percent = 0;
		hit_chance = 0;
		break;
	case npc_types.pirate_defense_drone:
		ai_state = ai_state.seek_player;
		spd = 1.5;
		rotation_speed = 0.04;
		ship_hull_max = 200;
		ship_hull = ship_hull_max;
		attack_type = npc_attack_types.shoot;
		npc_faction = factions.pirate;
		attack_speed = 1;
		dmg = 25;
		has_shield = false;
		shield = 0;
		shield_max = 0;
		damage_cooldown = 0.5;
		bullet_speed = 5;
		accuracy = 0.25;
		shield_percent = 0;
		hit_chance = 0.75;
		break;
	case npc_types.civ_test:
		ai_state = ai_state.wander;
		spd = 1.5;
		rotation_speed = 0.025;
		ship_hull_max = 100;
		ship_hull = ship_hull_max;
		npc_faction = factions.civ;
		attack_speed = 0;
		dmg = 0;
		has_shield = false;
		shield = 0;
		shield_max = 0;
		damage_cooldown = 0.5;
		bullet_speed = 5;
		accuracy = 0;
		shield_percent = 0;
		civ_choice = choose(1, 3, 4, 5);
		hit_chance = 0;
		break;
	case npc_types.civ_defense_drone:
		ai_state = ai_state.attack;
		spd = 2;
		rotation_speed = 0.05;
		ship_hull_max = 200;
		ship_hull = ship_hull_max;
		attack_type = npc_attack_types.shoot;
		npc_faction = factions.civ;
		attack_speed = 1;
		dmg = 25;
		has_shield = false;
		shield = 0;
		shield_max = 0;
		damage_cooldown = 0.5;
		bullet_speed = 5;
		accuracy = 0.25;
		shield_percent = 0;
		hit_chance = 0.75;
	break;
}