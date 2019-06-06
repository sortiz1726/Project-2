player = collision_circle(x, y, radius, obj_player, false, true);

if(player != noone)
{
	player.freeze = true;
}