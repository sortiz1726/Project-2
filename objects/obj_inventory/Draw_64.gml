/// @description draws inventory

var inventory_width = sprite_width * inventory_size
var draw_x = x - inventory_width/2

for(var i = 0; i < inventory_size; i++)
{
	#region draws inventory without items
	var current = 0
	if(i == current_item) current = 1;
	draw_sprite(sprite_index, current, draw_x, y);
	#endregion
	
	#region draws item in corresponding place
	var item = item_array[i];
	if(item != noone) 
	{
		draw_object_sprite_center(item, 0, draw_x, y);
	}
	#endregion
	draw_x += sprite_width;
}