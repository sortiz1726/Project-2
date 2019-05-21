/// @description draw text box

//draw box
draw_sprite(spr_textBox, 0, x ,y);
//draw text
draw_set_font(fnt_text);

draw_text_ext(x, y, dialouge, stringHeight, boxWidth);