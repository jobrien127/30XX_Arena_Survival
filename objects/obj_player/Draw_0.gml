/// @description Insert description here
// You can write your code in this editor


if (keyboard_check(ord("A")) && keyboard_check(ord("S"))){
	draw_sprite(spr_player_moveBottomLeft, -1, x, y);
}
else if (keyboard_check(ord("S")) && keyboard_check(ord("D"))){
	draw_sprite(spr_player_moveBottomRight, -1, x, y);
}
else if (keyboard_check(ord("W")) && keyboard_check(ord("A"))){
	draw_sprite(spr_player_moveTopLeft, -1, x, y);
}
else if keyboard_check(ord("A")){
	draw_sprite(spr_player_moveLeft, -1, x, y);
}
else if keyboard_check(ord("W")) {
	draw_sprite(spr_player_moveUp, -1, x, y);
}
else if keyboard_check(ord("D")) {
	draw_sprite(spr_player_moveRight, -1, x,y);
}
else if keyboard_check(ord("S")) {
	draw_sprite(spr_player_moveDown, -1, x, y);
}
else if (keyboard_check(ord("W")) && keyboard_check(ord("D"))){
	draw_sprite(spr_player_moveTopRight, -1, x, y);
}
else{
draw_self();
}
