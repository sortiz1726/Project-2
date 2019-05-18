/// draw_object_sprite_center(object_index, subimage, x, y)
/// @description centers sprite before drawing
/// @param object_index
/// @param subimage
/// @param x
/// @param y

var sprite_id = object_get_sprite(argument0);
var subimage = argument1;
var _x = argument2;
var _y = argument3;

//calculates where x and y should be
var draw_x = _x - (sprite_get_width(sprite_id)/2 - sprite_get_xoffset(sprite_id));
var draw_y = _y - (sprite_get_height(sprite_id)/2 - sprite_get_yoffset(sprite_id));

// draws sprite out
draw_sprite(sprite_id, subimage, draw_x, draw_y);