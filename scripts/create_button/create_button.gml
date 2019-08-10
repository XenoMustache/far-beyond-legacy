/// @arg1 message
/// @arg2 x
/// @arg3 y
/// @arg4 button_size
/// @arg5 show_button
/// @arg6 text_offset_color
var message = argument0;
var xx = argument1;
var yy = argument2;
var size = argument3;
var button = instance_create_depth(xx, yy, 1, obj_button);
var show_button = argument4;
var text_offset_color = argument5;
button.button_text = message;
button.button_x = xx;
button.button_y = yy;
button.size = size;
button.show_button = show_button;
button.text_offset_color = text_offset_color;
return button.id;