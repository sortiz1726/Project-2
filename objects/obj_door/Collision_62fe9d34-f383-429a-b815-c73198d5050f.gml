if(open && keyboard_check_pressed(vk_space))
{
	var room_index = asset_get_index(next_room);
	room_goto(room_index);
}
