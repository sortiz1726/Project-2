/// inventory_item_give(slot_number)
/// @description gives current item to something or someone
/// @param slot_number

var slot_number = argument0;

with(obj_inventory)
{
	item_array[slot_number] = noone;
	inventory_slide_left();
}