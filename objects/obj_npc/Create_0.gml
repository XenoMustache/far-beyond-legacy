/// @desc Initialize NPC
// Unused Defaults
is_moving = false;
target_exist = false;
target_x = pointer_null;
target_y = pointer_null;
npc_type = pointer_null;
health_percent = pointer_null;
accuracy = pointer_null;
// Vital Defaults
image_angle = 90;
can_shoot = true;
can_take_damage = true;
// Register ship types
enum npc_types {
	pirate_test,
	civ_test
}
// Register NPC directives
enum ai_directive {
	wander,
	attack,
	flee
}
// Set variables according to NPC type
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