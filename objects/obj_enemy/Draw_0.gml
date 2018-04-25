/// @description Insert description here
// You can write your code in this editor
	if(obj_player.x > x && obj_player.y > y){
		draw_sprite(spr_enemy_down,-1 ,x, y);
		}
	if (obj_player.x > x && obj_player.y < y){
		draw_sprite(spr_enemy_up,-1 ,x, y);
	}
	if (obj_player.x > x && obj_player.y == y){
		draw_sprite(spr_enemy_right,-1 ,x, y);
	}
	if (obj_player.x < x && obj_player.y > y){
			draw_sprite(spr_enemy_down,-1 ,x, y);
	}
	if (obj_player.x < x && obj_player.y < y){
		draw_sprite(spr_enemy_up,-1 ,x, y);
	}
	if (obj_player.x < x && obj_player.y == y){
		draw_sprite(spr_enemy_left,-1 ,x, y);
	}
	if (obj_player.x == x && obj_player.y > y){
			draw_sprite(spr_enemy_down,-1 ,x, y);
	}
	if (obj_player.x == x && obj_player.y < y){
			draw_sprite(spr_enemy_up,-1 ,x, y);
		}
		
 if (damaged){
	 draw_sprite(spr_enemy_damage, -1, x, y);
 }
 damaged = false;
	