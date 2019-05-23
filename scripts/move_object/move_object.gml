/// move_object(horizontal_displacement, vertical_displacement, collision_object)
/// @description move_object(horizontal_displacement, vertical_displacement, collision_object) hello
/// @param horizontal_displacement
/// @param vertical_displacement
/// @param collision_object

horizontal_displacement = argument0;
vertical_displacement = argument1;
collision_object = argument2;

// horizontal collision (predicts collision ahead a time)
if(place_meeting(x + horizontal_displacement, y, collision_object))
{
	// moves object as close to the collision as possible before colliding 
	while(!place_meeting(x + sign(horizontal_displacement), y, collision_object)) x += sign(horizontal_displacement);
	horizontal_displacement = 0;
	hsp = 0
}
x += horizontal_displacement;

// vertical collisions (preditcs collsion ahead a time)
if(place_meeting(x, y + vertical_displacement, collision_object))
{
	// moves object as close to the collision as possible before colliding 
	while(!place_meeting(x, y + sign(vertical_displacement) , collision_object)) y += sign(vertical_displacement);
	vertical_displacement = 0;
	vsp = 0;
}
y += vertical_displacement;