player = collision_circle(x, y, radius, obj_player, false, true);

if(player != noone)
{
	if(activate) instance_create_layer(x - sprite_xoffset, y - sprite_yoffset - 100, "TextBox", obj_text_maker2);
	player.freeze = true;
	activate = false;
}