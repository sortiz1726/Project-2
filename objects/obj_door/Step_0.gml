if(open) image_index = 1;

#region repsonse builder (only if text box is being used)


if(create_text_box || permanent_text_box)
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
	textBox.dialouge = stringBuidler;
}


#endregion
