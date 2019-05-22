/// @desc Update
// Get input
h_press_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
h_press_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
v_press_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
v_press_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var x_input = h_press_right - h_press_left;
var y_input = v_press_down - v_press_up;
// Manage speed and acceleration
x_speed += x_input * acceleration;
y_speed += y_input * acceleration;
var spd = point_distance(0, 0, x_speed, y_speed);
var dir = point_direction(0 , 0, x_speed, y_speed);
if (spd > max_speed) {
	x_speed = lengthdir_x(max_speed, dir);
	y_speed = lengthdir_y(max_speed, dir);
}
// Friction
if (x_input == 0) x_speed = lerp(x_speed, 0, 0.05);
if (y_input == 0) y_speed = lerp(y_speed, 0, 0.05);
// Movement
x += x_speed;
y += y_speed;