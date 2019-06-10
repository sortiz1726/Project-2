player = collision_circle(x, y, radius, obj_player, false, true);

if(player != noone)
{
	if(activate)
	{
		audio_play_sound(snd_woman, 3, false);
		instance_create_layer(x - sprite_xoffset, y - sprite_yoffset - 100, "TextBox", obj_text_maker2);
	}
	player.freeze = true;
	activate = false;
}