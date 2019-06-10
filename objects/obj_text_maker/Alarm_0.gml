if(i < array_length_1d(dialouge) - 1)
{
	audio_stop_sound(sound[i]);
	alarm_set(0, 3 * room_speed)
	i++;
	textBox.dialouge = dialouge[i];
	audio_play_sound(sound[i], 2, false);
}
else
{
	audio_stop_all();
	room_goto(rm_cut_scene1);
}