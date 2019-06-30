/// @arg0 width
/// @arg1 height
/// @arg2 message
/// @arg3 x
/// @arg4 y
var width = argument0;
var height = argument1;
var message = argument2;
var xx = argument3;
var yy = argument4;
var button = instance_create_depth(0, 0, 0, obj_button);
button.button_width = width;
button.button_height = height;
button.button_text = message;
button.button_x = xx;
button.button_y = yy;
return button.id;