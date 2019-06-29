/// @desc Update
var window_height_center = window_get_height() / 2;
var window_width_center = window_get_width() / 2;
// Set target
if (control_handler.mouse_locked) {
	var mouse_direction = point_distance(window_width_center, window_height_center, window_mouse_get_x(), window_mouse_get_y());
	if (window_mouse_get_x() > (window_width_center + 360)) {
		window_mouse_set(window_width_center, window_height_center);
		mouse_direction = 0;
		wraps++;
	}
	if (window_mouse_get_x() < (window_width_center)) {
		window_mouse_set(window_width_center + 360, window_height_center);
		mouse_direction = 360;
		wraps--;
	}
}
// Get input
if (keyboard_check(vk_space) && can_shoot == true) {
		player_attack(player_attack_types.shoot);
}
// Move player
if (control_handler.mouse_locked) {
	image_angle -= (mouse_direction + wraps * 360 + image_angle) * rotation_speed;
	show_debug_message(string(mouse_direction));
	direction = image_angle;
}
// Check movement
if (speed != 0) is_moving = true else is_moving = false;
// Manage health and shields
if (ship_hull <= 0) {
	if (global.player_lives <= 0) room_restart();
	else {
		global.player_lives--;
		ship_hull = ship_hull_max;
		shield = shield_max;
		x = room_width / 2;
		y = room_height / 2;
	}
}
if (move) speed = spd else speed = 0;
if (shield <= 0) has_shield = false;
if (can_rechage_shield) {
	has_shield = true;
	shield += recharge_rate;
}
if (shield >= shield_max) can_rechage_shield = false;
health_percent = (ship_hull / ship_hull_max) * 100;
shield_percent = (shield / shield_max) * 100;