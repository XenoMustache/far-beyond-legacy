/// @desc Render NPC
// Set render data according to NPC type
switch (npc_type) {
	case npc_types.pirate_test:
		sprite_index = registry.spr_small_ships_pirate;
		image_index = 1;
		image_speed = 0;
		image_xscale = 2;
		image_yscale = 2;
	break;
	case npc_types.pirate_boss:
		sprite_index = registry.spr_small_ships_pirate;
		image_index = 0;
		image_speed = 0;
		image_xscale = 2;
		image_yscale = 2;
	break;
	case npc_types.pirate_defense_drone:
		sprite_index = registry.spr_small_ships_pirate;
		image_index = 2;
		image_speed = 0;
		image_xscale = 2;
		image_yscale = 2;
	break;
	case npc_types.civ_test:
		sprite_index = registry.spr_small_ships;
		image_index = civ_choice;
		image_speed = 0;
		image_xscale = 2;
		image_yscale = 2;
	break;
}
// Set collision mask
sprite_collision_mask(sprite_index, true, 1, 0, 0, 0, 0, 0, 0);