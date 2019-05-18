/// @description controls inventory selection

//scroll through inventory
key_scroll_left = keyboard_check_pressed(ord("Q"));
key_scroll_right = keyboard_check_pressed(ord("E"));

var scroll = key_scroll_right - key_scroll_left;

current_item = (current_item + scroll) % inventory_size;
if(current_item < 0) current_item = inventory_size - 1;