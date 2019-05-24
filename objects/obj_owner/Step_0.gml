/// @description Insert description here
// You can write your code in this editor
if((amount_of_items_needed == 0 && keyboard_check_pressed(vk_space)) || keyboard_check(vk_enter))
{
	alarm_set(0, 1);
}

stringBuidler = "I need ";

string_array = inventory_print(items_needed);
var length = array_length_1d(string_array);

for(var i = 0; i < length; i++)
{
	if(i == 0) stringBuidler += "my " + string_array[i];
	else if(i == length - 1) stringBuidler += ", and my " + string_array[i];
	else stringBuidler += ", " + string_array[i];
}
textBox.dialouge = stringBuidler;
