/// @description: gets player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("W"));
key_crouch = keyboard_check(ord("S"));
key_select = keyboard_check(vk_space);


if(collision_circle(x, y - sprite_yoffset + sprite_height/2, radius, obj_owner, false, true) != noone)
{
	if(key_select) inventory_item_give(obj_owner);
}

if(key_crouch) sprite_index = spr_player_crouch;
if(sprite_index == spr_player_crouch && !key_crouch && !ceilingAbove()) sprite_index = spr_player;
// calculates movement
#region horiztonal movement
if(onSides()) hsp = 0;

var move = key_right - key_left;
if(move != 0)image_xscale = sign(move);
if(onGround()) hsp = move * walkspd;
else
{
	if(abs(hsp) <= walkspd) hsp += move * 2;
	else hsp = walkspd * sign(hsp);
}

#endregion
#region vertical movement
vsp += grv;
#endregion
if(onGround() && (key_jump)) vsp = -jump;
// moves the object
move_object(hsp, vsp, Obj_Static);
if(onGround()) vsp = 0;