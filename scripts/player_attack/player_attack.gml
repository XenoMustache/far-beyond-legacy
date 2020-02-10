/// @arg0 attack_type
// Register attack types
var attack_type = argument0;

if (can_shoot) {
	switch (attack_type) {
		case "mass_driver":
			with (instance_create_depth(x + lengthdir_x(10, image_angle), y + lengthdir_y(10, image_angle), 0, obj_bullet)) {
				sprite_index = spr_bullets;
				image_index = 0;
				image_speed = 0;
				image_xscale = 1;
				image_yscale = 1;
				
				spd = obj_player_ship.bullet_speed;
				
				direction = other.image_angle + random_range(25 * obj_player_ship.accuracy, -25 * obj_player_ship.accuracy);
				image_angle = direction;
				
				bullet_type = bullet_types.player;
				hit_bullet = weighted_chance(obj_player_ship.hit_chance);
				bullet_dmg = obj_player_ship.bullet_damage;
			}
			
			can_shoot = false;
			
			var sound = audio_emitter_create();
			audio_emitter_gain(sound, global.volume_effect);
			if (!global.mute_all && !global.mute_effects) audio_play_sound_on(sound, snd_laser, false, 5);
			
			alarm[0] = room_speed / attack_speed;
		break;
	}
}