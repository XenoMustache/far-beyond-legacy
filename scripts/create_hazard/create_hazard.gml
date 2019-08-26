/// @arg0 hazard_type
/// @arg1 x
/// @arg2 y
/// @arg3 shape
/// @arg4 radius
/// @arg5 is_inverted
/// @arg6 checktime
/// @arg7 chance
var hazard_type = argument0;
var xx = argument1;
var yy = argument2;
var shape = argument3;
var radius = argument4;
var is_inverted = argument5;
var hazard = instance_create_depth(xx, yy, 0, obj_hazard_zone);
var checktime = argument6 * room_speed;
var chance = argument7;
hazard.hazard_type = hazard_type;
hazard.x = xx;
hazard.y = yy;
hazard.hazard_shape = shape;
hazard.hazard_radius = radius;
hazard.hazard_inverted = is_inverted;
hazard.hazard_checktime = checktime;
hazard.hazard_chance = chance;
return hazard.id;