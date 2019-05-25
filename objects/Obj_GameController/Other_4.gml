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
