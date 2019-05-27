/// @description: gets player input and produces interactive output

#region gathers player input
	
	#region movement input
		key_left = keyboard_check(ord("A"));
		key_right = keyboard_check(ord("D"));
		key_jump = keyboard_check_pressed(ord("W"));
		key_crouch = keyboard_check(ord("S"));
	#endregion

	#region inventory input
		key_select = keyboard_check_pressed(vk_space);
		key_scroll_left = keyboard_check_pressed(vk_left);
		key_scroll_right = keyboard_check_pressed(vk_right);
	#endregion
	
#endregion

#region calculates movement
	
	#region calculates horiztonal movement
		// determines which horizontal direction to move in.
		var move = key_right - key_left;
		
		image_speed = abs(move) * 2
		// determines which direction sprite is facing
		if(move != 0) image_xscale = sign(move);
		// ground and air horizontal movement
		if(onGround()) hsp = move * walkspd;
		else hsp = clamp(hsp + move * 2, -walkspd, walkspd);
	#endregion
	
	#region calculates vertical movement
		vsp += grv;
		if(onGround() && (key_jump)) vsp = -jump;	
	#endregion

#endregion
// moves the object
move_object(hsp, vsp, Obj_Static);

#region interact with inventory 

	#region scroll through inventory
		var scroll = key_scroll_right - key_scroll_left;
		if(scroll != 0)
		{
			with(obj_inventory)
			{
				current_slot = (current_slot + scroll) % inventory_size;
				if(current_slot < 0) current_slot = inventory_size - 1;
			}
		}
	#endregion
	
	#region attempt to give item from inventory
	
		//gives item to owner
		var x_center = x - sprite_xoffset + sprite_width/2;
		var y_center = y - sprite_yoffset + sprite_height/2;

		
		var puzzle_reciever = collision_circle(x_center, y_center, radius, Obj_Puzzle_reciever, false, true);
		if(puzzle_reciever != noone)
		{
			puzzle_reciever.textBox.appear = true;
			if(key_select) puzzle_item_needed(obj_inventory.current_item, puzzle_reciever);
		}
		
	#endregion
	
#endregion


#region animation state
	if(key_crouch && onGround()) sprite_index = spr_Doggo_crouch;
	
	if(((sprite_index == spr_Doggo_crouch && !key_crouch) || key_jump) && !ceilingAbove()) sprite_index = spr_Doggo;

#endregion