/// @arg1 obstacle_type
/// @arg2 x
/// @arg3 y
var obstacle_depth;
switch (argument0) {
	case "sm_asteroid_fg":
		obstacle_depth = 0;
	break;
	case "sm_asteroid_bg":
		obstacle_depth = 1;
	break;
}
var obstacle = instance_create_depth(argument1, argument2, obstacle_depth, obj_obstacle);
obstacle.obstacle_type = argument0;
return obstacle.id;
