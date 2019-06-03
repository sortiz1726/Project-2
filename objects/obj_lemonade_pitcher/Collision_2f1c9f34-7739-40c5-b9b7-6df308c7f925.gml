if(keyboard_check_pressed(vk_space))
{
	if(inventory_item_find(obj_lemonade) == -1) inventory_item_add(obj_lemonade);
}