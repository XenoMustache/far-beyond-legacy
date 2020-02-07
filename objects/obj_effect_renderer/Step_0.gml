/// @desc Render Shield
if (global.game_paused) exit;

switch (effect) {
	case effects.shield:
		var shield_alpha = obj_player_ship.shield * 0.02;
		x = obj_player_ship.x;
		y = obj_player_ship.y;
		sprite_index = spr_effects;
		image_index = 0;
		image_speed = 0;
		image_xscale = 2;
		image_yscale = 2;
		image_alpha = shield_alpha;
	break;
	case effects.capsule:
		x = other.x;
		y = other.y;
		sprite_index = spr_capsule;
		image_index = 1;
		image_speed = 0;
		image_xscale = 2;
		image_yscale = 2;
	break;
	case effects.logo:
		sprite_index = spr_logo;
		image_index = 1;
		image_speed = 0;
		image_xscale = 3;
		image_yscale = 4;
	break;
}