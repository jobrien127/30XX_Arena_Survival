/// @description Insert description here
// You can write your code in this editor

//basic enemy movement
if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x,obj_player.y,max(spd-(hit*spd),0));
	if (hp <= 0) instance_destroy();
}
