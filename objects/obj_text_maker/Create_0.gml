dialouge = array_create(8, 0);
dialouge[0] = "Owner - hello billy, thanks for watching my dog for week";
dialouge[1] = "Dogsitter - no problem dude, happy to watch doggo for the week";
dialouge[2] = "Dogsitter - anyways why are you leaving for a week though?";
dialouge[3] = "Owner - I got this really interesting job and the people who hired me said they loved my camera work.";
dialouge[4] = "Owner - The pay is really big, like $50,000 and they said that I was only one to accept the offer";
dialouge[5] = "Dogsitter - that sounds kinda of strange don't it?";
dialouge[6] = "Owner - I guess it does sound strange but hey $50,000 is $50,000 right? ";
dialouge[7] = "Dogsitter - well I guess you got me there";
textBox = instance_create_layer(x, y, "TextBox", obj_textBox);
textBox.appear = true;
textBox.range_before_it_appears = 100000;

i = 0;
textBox.dialouge = dialouge[i];
alarm_set(0, 3 * room_speed);