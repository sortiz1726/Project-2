visted = ds_map_find_value(levels_visted, room);
if(!is_undefined(visted))
{
	if(!visted)
	{
		 levels_visted[? room] = true;
		 for(var i = 0; i < array_length_1d(main_levels_array); i++)
		 {
			 var _room = main_levels_array[i];
			 if(_room != room)
			 {
				 levels_visted[? _room] = false;
			 }
		 }
		 inventory_reset();
	}
}
if(room == rm_place_holder && restart_trigger)
{
	restart_trigger = false;
	alarm_set(0, 4 * room_speed);
}
if(room == rm_cut_scene1)
{
	alarm_set(1, 2 * room_speed);
}
if(room == rm_cut_scene2)
{
	alarm_set(2, 4 * room_speed);
	audio_play_sound(snd_car, 1, false);
}
else
{
	audio_stop_sound(snd_car);
}

if(room == rm_outside)
{
	audio_play_sound(snd_outside, 7, true)
}
else
{
	audio_stop_sound(snd_outside);
}
if(room == rm_studio_cut_scene_end_game)
{
	audio_stop_sound(snd_walking);
}

if(room == rm_studio_cut_scene_end_game)
{
	alarm_set(3, 7 * room_speed);
	alarm_set(4, 9 * room_speed);
	alarm_set(5, 21 * room_speed);
	
}