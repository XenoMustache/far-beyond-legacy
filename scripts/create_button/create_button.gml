/// @arg1 message
/// @arg2 x
/// @arg3 y
/// @arg4 width
/// @arg5 height
/// @arg6 show_button
/// @arg7 text_offset_color
/// @arg8 is_toggled
var message = argument0;
var xx = argument1;
var yy = argument2;
var button = instance_create_depth(xx, yy, 1, obj_button);
var width = argument3;
var height = argument4;
var show_button = argument5;
var text_offset_color = argument6;
var is_toggled = argument7;
button.button_text = message;
button.button_x = xx;
button.button_y = yy;
button.button_width = width;
button.button_height = height;
button.show_button = show_button;
button.text_offset_color = text_offset_color;
button.is_toggled = is_toggled;
return button.id;