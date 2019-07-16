/// @arg0 x_scale
/// @arg1 y_scale
/// @arg2 message
/// @arg3 x
/// @arg4 y
var x_scale = argument0;
var y_scale = argument1;
var message = argument2;
var xx = argument3;
var yy = argument4;
var button = instance_create_depth(0, 0, 1, obj_button);
button.button_x_scale = x_scale;
button.button_y_scale = y_scale;
button.button_text = message;
button.button_x = xx;
button.button_y = yy;
return button.id;