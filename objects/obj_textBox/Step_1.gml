/// @description Insert description here
var center_x = x - sprite_xoffset + sprite_width/2;
var center_y = y - sprite_yoffset + sprite_height/2;

var player = collision_circle(center_x, center_y, range_before_it_appears, obj_player, false, true);



if(player != noone)
{
	appear = true;
}
else 
{
	appear = false;
}

if(stay)
{
	appear = true;
}



