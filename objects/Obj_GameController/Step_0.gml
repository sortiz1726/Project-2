
if(debug)
{
	if(keyboard_check_pressed(ord("1")))
	{
		room_goto(rm_living_room);
	}
	if(keyboard_check_pressed(ord("2")))
	{
		room_goto(rm_outside);
	}
	if(keyboard_check_pressed(ord("0")))
	{
		room_goto(rm_cut_scene);
	}
	if(keyboard_check_pressed(ord("3")))
	{
		room_goto(rm_farm_area);
	}
	if(keyboard_check_pressed(ord("4")))
	{
		room_goto(rm_outside_near_studio);
	}
	
	
}

