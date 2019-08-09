/// @desc Initialize NPC
// Unused Defaults
is_moving = false;
hit = false;
target_exist = false;
npc_faction = pointer_null;
target_x = pointer_null;
target_y = pointer_null;
health_percent = pointer_null;
accuracy = pointer_null;
can_rechage_shield = false;
civ_target = noone;
health_percent = 100;
shield_percent = 100;
// Vital Defaults
image_angle = 90;
can_shoot = true;
can_take_damage = true;
// Register NPC Factions
enum factions {
	pirate,
	civ,
	player
}
// Register NPC directives
enum ai_directive {
	wander,
	attack,
	flee,
	seek_player,
	flee_pirate,
	attack_civ
}
// Create Shield