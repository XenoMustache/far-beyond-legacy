/// @description instance_nth_furthest(x,y,obj,n)
/// @param x
/// @param y
/// @param obj
/// @param n
//gives you the nth furthest instance of type obj to point x,y
//Original by Kyle_Solo
//Modified by Rob van Saaze

var _temp_,_array_;


_array_ = ds_priority_create()
with(argument2) 
{
ds_priority_add(_array_,id,point_distance(x,y,argument0,argument1))
}


repeat(argument3-1)

{ds_priority_delete_max(_array_)}
if ds_priority_empty(_array_) return -1
_temp_ = ds_priority_find_max(_array_)

ds_priority_destroy(_array_)

return _temp_
