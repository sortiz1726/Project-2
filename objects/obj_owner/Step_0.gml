/// @description creates text depiciting what Items are needed

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

if(items_need == 0) alarm_set(0, 1);