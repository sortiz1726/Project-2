/// @description Insert description here
/// @description when puzzle is complete, whatever puzzle_complete_action has determins what happens next

#region puzzle complete coding
if(activate && amount_of_items_needed == 0)
{
	
	if(puzzle_complete_action != "")
	{
		show_debug_message(puzzle_complete_action);
		var asset_type = asset_get_type(puzzle_complete_action);
		//checks if asset exist in resource tree
		if(asset_type != asset_unknown)
		{
			var asset_index = asset_get_index(puzzle_complete_action)
			//checks if asset is an object
			if(asset_type == asset_object)
			{
				//checks if asset is an Item type
				if(object_get_parent(asset_index) == Obj_Item)
				{
					//adds item to inventory
					inventory_item_add(asset_index);
					puzzle_complete_action = "";
				}
			}
			//checks of asset is a room
			if(asset_type == asset_room)
			{
				image_index = 1;
				alarm_set(0, room_speed * 2);
			}
		}
	}
	
	activate = false;
}
#endregion
