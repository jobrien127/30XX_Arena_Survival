/// @description Insert description here
// You can write your code in this editor

//basic player movement
if keyboard_check(ord("A")){
	x -= step;
	draw_sprite(spr_player_moveLeft, -1, x, y);
}
if keyboard_check(ord("W")) {
	y -= step;
	draw_sprite(spr_player_moveUp, -1, x, y);
}
if keyboard_check(ord("D")) {
	x += step;
	draw_sprite(spr_player_moveRight, -1, x,y);
}
if keyboard_check(ord("S")) {
	y += step;
	draw_sprite(spr_player_moveDown, -1, x, y);
}

//TODD: dash and passive ability
//if keyboard_check(vk_space);
//if keyboard_check(vk_shift);
