/// array_print(array[])
/// @description prints 
/// @param array[]

var array = argument0;
var length = array_length_1d(array);

var stringBuidler = "["
for(var i = 0; i < length; i++)
{
	stringBuidler += object_get_name(array[i]);
	if(i < length - 1) stringBuidler += ", ";
}
stringBuidler += "]";
show_debug_message(stringBuidler);