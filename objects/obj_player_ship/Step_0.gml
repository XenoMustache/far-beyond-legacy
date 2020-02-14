/// @desc Update
if (global.game_paused) { speed = 0; exit;}

// Get input
var rotate = (keyboard_check(ord("A")) - keyboard_check(ord("D")));

if (keyboard_check_pressed(vk_space) && can_shoot == true && !global.console_open && !global.game_paused)
		player_attack(weapon_choice);

if (!move) image_angle += rotate * rotation_speed;
else image_angle += rotate * (rotation_speed * 0.25);

direction = image_angle;

// Check movement
if (speed != 0) is_moving = true else is_moving = false;

// Manage health and shields
if (ship_hull <= 0) {
	if (global.player_credits <= -500) room_restart();
	else {
		global.player_credits -= 100;
		global.respawn_message = create_message("respawn");
		global.respawn_button = create_button("respawn", display_get_gui_width() / 2, (display_get_gui_height() / 2) + 80, 120, 30, false, c_gray, false, dummy);
		
		instance_destroy(obj_effect_renderer);
		instance_destroy(id);
	}
}

if (move) { 
	c_speed = lerp(c_speed, spd, speedup_spd);
	motion_set(direction, c_speed);
} else {
	c_speed = lerp(c_speed, 0, slowdown_spd);
	motion_set(memory_direction, c_speed);
}

if (shield <= 0) has_shield = false;

if (can_rechage_shield) {
	has_shield = true;
	if (shield != 100) shield += recharge_rate;
}

if (ship_hull > ship_hull_max) ship_hull = ship_hull_max;

if (shield >= shield_max) can_rechage_shield = false;

health_percent = (ship_hull / ship_hull_max) * 100;
shield_percent = (shield / shield_max) * 100;