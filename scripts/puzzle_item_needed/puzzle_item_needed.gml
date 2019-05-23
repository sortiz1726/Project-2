/// puzzle_item_needed(item_recieved, object_reciever)
/// @description returns if item has been found and is also removed
/// @param item_recieved
/// @param object_reciever;

var item = argument0;
if(item == noone) return false;

var object_reciever = argument1;
var length = array_length_1d(object_reciever.items_needed);


for(var i = 0; i < length; i++)
{
	if(item == object_reciever.items_needed[i])
	{
		show_debug_message("I NEED IT");
		object_reciever.items_needed[i] = noone;
		inventory_item_give();
		return true;
	}
}
return false;
show_debug_message("I DON'T NEED IT");