/// @description Insert description here
var contains_key = inventory_item_find(obj_keys);
if(contains_key != -1)
{
	inventory_item_delete(contains_key);
}
room_persistent = false;
room_restart();