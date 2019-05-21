/// inventory_item_give(object_reciever)
/// @description gives current item to something or someone
/// @param object

var object_reciever = argument0;

array_print(object_reciever.items_needed);
with(obj_inventory)
{
	if(item_array[current_item] != noone)
	{	
		if(puzzle_item_needed(item_array[current_item], object_reciever))
		{
			item_array[current_item] = noone;
			object_reciever.items_need -= 1;
		}	
	}	
}