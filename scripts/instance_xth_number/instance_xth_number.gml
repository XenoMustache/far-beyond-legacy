/// @description instance_xth_number(obj,variable,value,operator)
/// @param obj
/// @param variable
/// @param value
/// @param operator
//Original by Kyle_Solo
//Modified by Rob van Saaze

var _check_;
_check_ = 0
with(argument0) {if variable_instance_exists(self,argument1) or is_real(argument1) if evaluate(argument1,argument2,argument3) _check_ += 1}
return _check_
