/// @desc Initialize
// Cleanup
alarm[0] = 0.5 * room_speed;
// Unused
bullet_type = pointer_null;
hit_bullet = pointer_null;
// Register bullet types
enum bullet_types {
	player,
	pirate,
	civillian
}