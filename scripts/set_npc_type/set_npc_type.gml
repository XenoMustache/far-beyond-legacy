///@arg0 npc_type
// Set variables according to NPC type
npc_type = argument0;
enum npc_types {
	pirate_test,
	pirate_boss,
	civ_test
}
switch (npc_type) {
	case npc_types.pirate_test:
		ai_state = ai_directive.wander;
		spd = 4;
		rotation_speed = 0.05;
		ship_hull_max = 100;
		ship_hull = ship_hull_max;
		attack_speed = 1;
		dmg = 25;
		shield = 0;
		bullet_speed = 40;
		damage_cooldown = 0.5;
		accuracy = 0.5;
	break;
	// TODO pirate boss
	case npc_types.pirate_boss:
		ai_state = ai_directive.wander;
		spd = 2;
		rotation_speed = 0.02;
		ship_hull_max = 200;
		ship_hull = ship_hull_max;
		attack_speed = 0;
		dmg = 0;
		shield = 0;
		bullet_speed = 40;
		damage_cooldown = 0.5;
		accuracy = 0;
	break;
	// TODO pirate defense drone
	case npc_types.civ_test:
		ai_state = ai_directive.wander;
		spd = 3;
		rotation_speed = 0.05;
		ship_hull_max = 100;
		ship_hull = ship_hull_max;
		attack_speed = 0;
		dmg = 0;
		shield = 0;
		bullet_speed = 0;
		damage_cooldown = 0.5;
		accuracy = 0;
	break;
	// TODO civ defense drone
}