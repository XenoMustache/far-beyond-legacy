/// @arg1 message
/// @arg2 x
/// @arg3 y
/// @arg4 button_size
var message = argument0;
var xx = argument1;
var yy = argument2;
var size = argument3;
var button = instance_create_depth(xx, yy, 1, obj_button);
button.button_text = message;
button.button_x = xx;
button.button_y = yy;
button.size = size;
return button.id;