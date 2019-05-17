/// @description: gets player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("W"));
key_crouch = keyboard_check(ord("S"));

// calculates movement
#region horiztonal movement
if(onSides()) hsp = 0;

var move = key_right - key_left;
if(onGround()) hsp = move * walkspd;
else
{
	if(abs(hsp) <= walkspd) hsp += move * 2;
	else hsp = walkspd * sign(hsp);
}
#endregion
#region vertical movement
vsp += grv;
#endregion
if(onGround() && (key_jump)) vsp = -jump;
// moves the object

move_object(hsp, vsp, Obj_Static);
if(onGround()) vsp = 0;