/// inventory_item_find(item)
/// @description return slot number in which inventory is found (-1 means not found)
/// @param item
/// @return slot number

var item = argument0;

with(obj_inventory)
{
	for(var i = 0; i < inventory_size; i++)
	{
		if(item_array[i] == item) return i;
	}
	return -1;
}