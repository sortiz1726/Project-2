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
				room_index = asset_index
				alarm_set(0, timer_for_room_transition * room_speed);
				//goes to the room	
				
			}
		}
	}
	activate = false;
}


#endregion

#region repsonse builder (only if text box is being used)


if(create_text_box)
{
	var stringBuidler;
	
	if(amount_of_items_needed > 0)
	{
		if(accepted)
		{
			stringBuidler = response_accept;	
		}
		else if(declined)
		{
			stringBuidler = response_decline;
		}
		else
		{
			stringBuidler = response_I_need;
			// if list of items needed is to be added to the neeeded response
			if(response_include_items)
			{
				string_array = inventory_print(items_needed);
				var length = array_length_1d(string_array);

				for(var i = 0; i < length; i++)
				{
					if(i == 0) stringBuidler += " my " + string_array[i];
					else if(i == length - 1) stringBuidler += ", and my " + string_array[i];
					else stringBuidler += ", " + string_array[i];
				}
			}
		}
	
		if(declined || accepted)
		{
			var timer = string_length(stringBuidler)/20;
			if(trigger_repsonse_alarm) alarm_set(1, timer * room_speed);
			trigger_repsonse_alarm = false;
		}
	}
	else
	{
		stringBuidler = response_neccesities_met;
	}

	//sets it text box with the string builder
	textBox.x = x
	textBox.dialouge = stringBuidler;
}


#endregion
