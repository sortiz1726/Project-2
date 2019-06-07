player = collision_circle(x, y, radius, obj_player, false, true);



if(player != noone)
{
	
	player.freeze = true;
	if(activate)
	{
		alarm_set(0, room_speed);
		var textBox = instance_create_layer(x - sprite_xoffset, y - sprite_yoffset - 100, "TextBox", obj_textBox);
		textBox.stay = true;
		
		textBox.dialouge = "HEY DOG!! WHAT ARE YOU DOING WITH MY KEYS!!?!?"
		if(inventory_item_find(obj_keys) == -1) textBox.dialouge = "HEY DOG!! YOU SHOULDN'T BE HERE!!"
	}
	
	activate = false;
	move = false;
}

if(move)
{
	x += spd * dir
	distance_traveled += spd;
	image_xscale = sign(dir);
	if(distance_traveled >= distance)
	{
		dir *= -1
		distance_traveled = 0;
	}	
}
	
