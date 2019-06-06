if(i < array_length_1d(dialouge) - 1)
{
	alarm_set(0, 3 * room_speed)
	i++;
	textBox.dialouge = dialouge[i];
}
else
{
	room_goto(rm_dog_napper_house);
}