/// inventory_add(item)
/// @description adds item to inventory
/// @param item
/// @returns whether item was succesfully placed

with(obj_inventory)
{
	for(var i = 0; i < inventory_size; i++)
	{
		if(item_array[i] == noone)
		{
			item_array[i] = argument0;
			return true;
		}
	}
	return false;
}