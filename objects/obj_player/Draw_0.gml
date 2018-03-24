/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("A")){
	draw_sprite(spr_player_moveLeft, -1, x, y);
}
if keyboard_check(ord("W")) {
	draw_sprite(spr_player_moveUp, -1, x, y);
}
if keyboard_check(ord("D")) {
	draw_sprite(spr_player_moveRight, -1, x,y);
}
if keyboard_check(ord("S")) {
	draw_sprite(spr_player_moveDown, -1, x, y);
}
