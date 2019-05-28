/// @description Evaluate(variable,value,operator)
/// @param variable
/// @param value
/// @param operator
//Original by Kyle_Solo
//Modified by Rob van Saaze

if is_string(argument0)
{
    switch(string(argument2))
    {
        case "0":
        {
            if variable_instance_get(self,argument0) = argument1 return 1 break
        }
        case "=":
        {
            if variable_instance_get(self,argument0) = argument1 return 1 break
        }
        case ">":
        {
            if variable_instance_get(self,argument0) > argument1 return 1 break
        }
        case "<":
        {
            if variable_instance_get(self,argument0) < argument1 return 1 break
        }
        case "!=":
        {
            if variable_instance_get(self,argument0) != argument1 return 1 break
        }
        case "<=":
        {
            if variable_instance_get(self,argument0) <= argument1 return 1 break
        }
        case ">=":
        {
            if variable_instance_get(self,argument0) >= argument1 return 1 break
        } 
    }
    return 0
}
else
{
    if !script_exists(argument0) return 0
    var val;
    val = script_execute(argument0)
    switch(string(argument2))
    {
        case "0":
        {
            if val = argument1 return 1 break
        }
        case "=":
        {
            if val = argument1 return 1 break
        }
        case ">":
        {
            if val > argument1 return 1 break
        }
        case "<":
        {
            if val < argument1 return 1 break
        }
        case "!=":
        {
            if val != argument1 return 1 break
        }
        case "<=":
        {
            if val <= argument1 return 1 break
        }
        case ">=":
        {
            if val >= argument1 return 1 break
        }
    }
    return 0
}
