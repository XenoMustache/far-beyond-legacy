/// @arg0 chance
randomize();
var input = argument0;
var calc_decimel = random_range(0.01, 1.0);
if (calc_decimel <= input) return true;
else return false;