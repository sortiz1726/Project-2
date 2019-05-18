/// inventory_item_give(object_reciever)
/// @description gives current item to something or someone
/// @param object

var object_reciever = argument0;

with(obj_inventory)
{
	item_array[current_item] = noone;
	object_reciever.items_need -= 1;
}