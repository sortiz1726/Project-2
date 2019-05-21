/// inventory_print(items[])
/// @description prints items in array and returns string_array
/// @param item[]

var array = argument0;
var length = array_length_1d(array);

//calculates how many are not noone;
var new_length = 0;
var i;
for(i = 0; i < length; i++)
{
	if(array[i]!= noone) new_length += 1;
}
//creats array with new length

var string_array = array_create(new_length, "aa");
var j = 0;
i = 0;
while(i < length && j < new_length)
{
	if(array[i] != noone)
	{
		string_array[j] = string_delete(object_get_name(array[i]), 1, 4);
		j++;
	}
	i++;
}
		

return string_array;