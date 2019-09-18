vspeed = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * spd;
hspeed = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * spd;
if (speed = 0) {
	image_speed = 0;
	image_index = 0;
} else {
	image_speed = 1;
	image_angle = direction + 90;
}