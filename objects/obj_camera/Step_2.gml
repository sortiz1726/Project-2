/// @description moves camera to player AFTER player has moved
#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height);

// checks if a player exist and then positions camera to follow player without leaving room
if(instance_exists(obj_player))
{   
	#region gets current camera position
	var camera_cur_x = camera_get_view_x(view);
	var camera_cur_y = camera_get_view_y(view);
	#endregion
	
	#region calculates where camera position should be
	var camera_next_x = clamp(obj_player.x - view_width/2, 0, room_width - view_width);
	var camera_next_y = clamp(obj_player.y - view_height/2, 0, room_height - view_height);
	#endregion
	
	// moves camera at certain speed
	camera_set_view_pos(view, 
						lerp(camera_cur_x, camera_next_x, camera_speed), 
						lerp(camera_cur_y, camera_next_y, camera_speed));
}
