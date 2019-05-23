/// inventory_slide_left()
/// @description shifts all items to the left

with(obj_inventory)
{
	var i = current_slot;
	var temp_hold_item;
	while(i < inventory_size)
	{
		// j holds index to next available item
		var j = i;
		//finds the next item in inventory
		while(j < inventory_size && item_array[j] == noone) j++;
		//stops everything if it could not find the next available item
		if(j == inventory_size) return;
		//otherwise it saves it
		temp_hold_item = item_array[j];
		item_array[j] = noone;
		//places item in that position
		item_array[i] = temp_hold_item;
		i++;
		//repeat the process
	}
	
}