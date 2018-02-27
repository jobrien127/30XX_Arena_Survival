/// @description Insert description here
// You can write your code in this editor

//Creates n new enemies
repeat(n)
{
	instance_create_layer(random(room_width),random(room_height),"lay_enemy",obj_enemy);
}
