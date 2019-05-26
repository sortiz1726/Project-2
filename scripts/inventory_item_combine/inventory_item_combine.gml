/// inventory_item_combined(item_1, item_2, combo_item)
/// @description combines two items (if possible) and adds it to the inventory
/// @param item_1
/// @param item_2
/// @param combo_item

var item_1 = argument0;
var item_2 = argument1;
var combo_item = argument2;

with(obj_inventory)
{
	var item_1_slot_number = inventory_item_find(item_1);
	var item_2_slot_number = inventory_item_find(item_2);
		if(item_1_slot_number != -1 && item_2_slot_number != -1)
		{
			inventory_item_delete(item_1_slot_number);
			item_2_slot_number = inventory_item_find(item_2);
			inventory_item_delete(item_2_slot_number);
			inventory_item_add(combo_item);
		}
}