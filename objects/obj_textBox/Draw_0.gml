/// @description draw text box
var center_x = x - sprite_xoffset + sprite_width/2;
var center_y = y - sprite_yoffset + sprite_height/2;
draw_set_color(c_white);
if(debug_draw_circle) draw_circle(center_x , center_y, range_before_it_appears, true);
if(appear)
{
	//draw box
	draw_sprite(spr_textBox, 0, x ,y);
	//draw text
	draw_set_font(fnt_text);
	draw_text_ext(x, y, dialouge, stringHeight, boxWidth);
}
