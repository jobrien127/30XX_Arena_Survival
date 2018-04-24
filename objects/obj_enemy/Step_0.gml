/// @description Insert description here
// You can write your code in this editor

//basic enemy movement


if (instance_exists(obj_player))
{
	if ((keyboard_check(ord("Q")) && x > obj_player.x) ||(keyboard_check(ord("E")) && x < obj_player.x)){
	spd = random_range(1,2);	
	}
	else if (keyboard_check(ord("Q")) || keyboard_check(ord("E"))){
	spd = 0;	
	}
	else{
		spd = random_range(1, 2);
	}


	move_towards_point(obj_player.x,obj_player.y,max(spd-(hit*spd),0));
	if (hp <= 0) instance_destroy();
}
