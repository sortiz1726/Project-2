levels_visted = ds_map_create();

main_levels_array = array_create(2, 0);
main_levels_array[0] = rm_Tutorial;
main_levels_array[1] = rm_living_room

for(var i = 0; i < array_length_1d(main_levels_array); i++)
{
	ds_map_add(levels_visted, main_levels_array[i], false);
}
