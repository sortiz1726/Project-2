/// inventory_item_give()
/// @description gives current item to something or someone

with(obj_inventory)
{
	item_array[current_slot] = noone;
	inventory_slide_left();
}