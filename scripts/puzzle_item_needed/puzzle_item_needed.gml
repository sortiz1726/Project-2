/// puzzle_item_needed(item_recieved, obj_puzzle_reciever)
/// @description returns if item has been found and is also removed
/// @param item_recieved
/// @param object_puzzle_reciever
var object_reciever = argument1;
object_reciever.activate = true;
var item = argument0;
if(item == noone) return false;

object_reciever.trigger_repsonse_alarm = true;

if(item == obj_lemonade)
{
	inventory_item_delete(obj_inventory.current_slot);
	object_reciever.accepted = true;
	object_reciever.decline = false;
	return false;
}

var length = array_length_1d(object_reciever.items_needed);

for(var i = 0; i < length; i++)
{
	if(item == object_reciever.items_needed[i])
	{
		object_reciever.items_needed[i] = noone;
		object_reciever.amount_of_items_needed -= 1;
		inventory_item_delete(obj_inventory.current_slot);
		object_reciever.accepted = true;
		object_reciever.decline = false;
		return true;
	}
}
object_reciever.declined = true;
object_reciever.accepted = false;
audio_play_sound(snd_deny, 8, false);
return false;