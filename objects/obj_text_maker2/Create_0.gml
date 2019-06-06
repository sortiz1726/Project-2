dialouge = array_create(2, 0);
dialouge[0] = "Stranger - oh look a stray dog, what's a dog like you doing out here in the middle of nowhere";
dialouge[1] = "Stranger - well I guess I'm just going to take you with me";

textBox = instance_create_layer(x, y, "TextBox", obj_textBox);
textBox.appear = true;
textBox.range_before_it_appears = 100000;

i = 0;
textBox.dialouge = dialouge[i];
alarm_set(0, 3 * room_speed);