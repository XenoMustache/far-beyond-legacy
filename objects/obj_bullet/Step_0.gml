/// @desc Update
// Set destruction data according to bullet type
switch (bullet_type) {
	case bullet_types.player:
		if (place_meeting(x, y, obj_npc)) instance_destroy();
	break;
	case bullet_types.pirate:
		if (place_meeting(x, y, obj_player_ship)) instance_destroy();
	break;
}