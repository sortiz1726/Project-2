/// @description creates variable that keeps track of amount of items needed
amount_of_items_needed = array_length_1d(items_needed);
activate = false;
//creates a text box
if(create_text_box)
{
	textBox = instance_create_layer(x, y - sprite_yoffset - 55, "TextBox", obj_textBox);
	textBox.my_creator = id;
	textBox.range_before_it_appears = 0;
}


//creates reponse booleans
accepted = false;
declined = false;
trigger_repsonse_alarm = true;
trigger = false;
