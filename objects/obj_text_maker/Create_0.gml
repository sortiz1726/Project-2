dialouge = array_create(8, 0);
sound = array_create(8, 0);

owner = snd_mumble_2
sitter = snd_mumble_1

dialouge[0] = "Owner - hello billy, thanks for watching my dog for week";
sound[0] = owner;

dialouge[1] = "Dogsitter - no problem dude, happy to watch doggo for the week";
sound[1] = sitter;

dialouge[2] = "Dogsitter - anyways why are you leaving for a week though?";
sound[2] = sitter;

dialouge[3] = "Owner - I got this really interesting job and the people who hired me said they loved my camera work.";
sound[3] = owner;

dialouge[4] = "Owner - The pay is really big, like $50,000 and they said that I was only one to accept the offer";
sound[4] = owner;

dialouge[5] = "Dogsitter - that sounds kinda of strange don't it?";
sound[5] = sitter;

dialouge[6] = "Owner - I guess it does sound strange but hey $50,000 is $50,000 right? ";
sound[6] = owner;

dialouge[7] = "Dogsitter - well I guess you got me there";
sound[2] = sitter;

textBox = instance_create_layer(x, y, "TextBox", obj_textBox);
textBox.appear = true;
textBox.range_before_it_appears = 100000;

i = 0;
textBox.dialouge = dialouge[i];
audio_play_sound(sound[i], 2, false);
alarm_set(0, 3 * room_speed);