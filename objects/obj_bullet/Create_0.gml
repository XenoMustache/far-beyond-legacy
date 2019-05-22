/// @desc Initialize
// Cleanup alarm
alarm[0] = 6 * room_speed;
// Unused
bullet_type = pointer_null;
hit_bullet = pointer_null;
bullet_dmg = pointer_null;
// Register bullet types
enum bullet_types {
	player,
	pirate,
	civillian
}