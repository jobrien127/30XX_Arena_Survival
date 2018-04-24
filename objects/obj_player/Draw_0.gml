//Drawing for movement
if (!attacking) {
	if (keyboard_check(ord("A")) && keyboard_check(ord("S"))) {
		if (global.currentCharacterIndex == 0) {
			draw_sprite(spr_player_moveLeft, -1, x, y);
		} else if (global.currentCharacterIndex == 1) {
			draw_sprite(spr_player_moveLeft_red, -1, x, y);	
		} else if (global.currentCharacterIndex == 2) {
			draw_sprite(spr_player_moveLeft_green, -1, x, y);	
		} else if (global.currentCharacterIndex == 3) {
			draw_sprite(spr_player_moveLeft_yellow, -1, x, y);	
		}
	}
	else if (keyboard_check(ord("S")) && keyboard_check(ord("D"))) {
		if (global.currentCharacterIndex == 0) {
			draw_sprite(spr_player_moveRight, -1, x, y);
		} else if (global.currentCharacterIndex == 1) {
			draw_sprite(spr_player_moveRight_red, -1, x, y);	
		}  else if (global.currentCharacterIndex == 2) {
			draw_sprite(spr_player_moveRight_green, -1, x, y);	
		} else if (global.currentCharacterIndex == 3) {
			draw_sprite(spr_player_moveRight_yellow, -1, x, y);	
		}
	}
	else if (keyboard_check(ord("W")) && keyboard_check(ord("A"))) {
		if (global.currentCharacterIndex == 0) {
			draw_sprite(spr_player_moveLeft, -1, x, y);
		} else if (global.currentCharacterIndex == 1) {
			draw_sprite(spr_player_moveLeft_red, -1, x, y);	
		} else if (global.currentCharacterIndex == 2) {
			draw_sprite(spr_player_moveLeft_green, -1, x, y);	
		} else if (global.currentCharacterIndex == 3) {
			draw_sprite(spr_player_moveLeft_yellow, -1, x, y);	
		}
	}
	else if (keyboard_check(ord("W")) && keyboard_check(ord("D"))) {
		if (global.currentCharacterIndex == 0) {
			draw_sprite(spr_player_moveRight, -1, x, y);
		} else if (global.currentCharacterIndex == 1) {
			draw_sprite(spr_player_moveRight_red, -1, x, y);	
		} else if (global.currentCharacterIndex == 2) {
			draw_sprite(spr_player_moveRight_green, -1, x, y);	
		} else if (global.currentCharacterIndex == 3) {
			draw_sprite(spr_player_moveRight_yellow, -1, x, y);	
		}	
	}
	else if keyboard_check(ord("A")) {
		if (global.currentCharacterIndex == 0) {
			draw_sprite(spr_player_moveLeft, -1, x, y);
		} else if (global.currentCharacterIndex == 1) {
			draw_sprite(spr_player_moveLeft_red, -1, x, y);	
		} else if (global.currentCharacterIndex == 2) {
			draw_sprite(spr_player_moveLeft_green, -1, x, y);	
		} else if (global.currentCharacterIndex == 3) {
			draw_sprite(spr_player_moveLeft_yellow, -1, x, y);	
		}
	}
	else if keyboard_check(ord("W")) {
		if (global.currentCharacterIndex == 0) {
			draw_sprite(spr_player_moveLeft, -1, x, y);
		} else if (global.currentCharacterIndex == 1) {
			draw_sprite(spr_player_moveLeft_red, -1, x, y);	
		} else if (global.currentCharacterIndex == 2) {
			draw_sprite(spr_player_moveLeft_green, -1, x, y);	
		} else if (global.currentCharacterIndex == 3) {
			draw_sprite(spr_player_moveLeft_yellow, -1, x, y);	
		}
	}
	else if keyboard_check(ord("D")) {
		if (global.currentCharacterIndex == 0) {
			draw_sprite(spr_player_moveRight, -1, x, y);
		} else if (global.currentCharacterIndex == 1) {
			draw_sprite(spr_player_moveRight_red, -1, x, y);	
		} else if (global.currentCharacterIndex == 2) {
			draw_sprite(spr_player_moveRight_green, -1, x, y);	
		} else if (global.currentCharacterIndex == 3) {
			draw_sprite(spr_player_moveRight_yellow, -1, x, y);	
		}
	}
	else if keyboard_check(ord("S")) {
		if (global.currentCharacterIndex == 0) {
			draw_sprite(spr_player_moveLeft, -1, x, y);
		} else if (global.currentCharacterIndex == 1) {
			draw_sprite(spr_player_moveLeft_red, -1, x, y);	
		} else if (global.currentCharacterIndex == 2) {
			draw_sprite(spr_player_moveLeft_green, -1, x, y);	
		} else if (global.currentCharacterIndex == 3) {
			draw_sprite(spr_player_moveLeft_yellow, -1, x, y);	
		}
	}
	else if (keyboard_check(ord("W")) && keyboard_check(ord("D"))) {
		if (global.currentCharacterIndex == 0) {
			draw_sprite(spr_player_moveRight, -1, x, y);
		} else if (global.currentCharacterIndex == 1) {
			draw_sprite(spr_player_moveRight_red, -1, x, y);	
		} else if (global.currentCharacterIndex == 2) {
			draw_sprite(spr_player_moveRight_green, -1, x, y);	
		} else if (global.currentCharacterIndex == 3) {
			draw_sprite(spr_player_moveRight_yellow, -1, x, y);	
		}
	}
	else if (keyboard_check(ord("Q"))) {
		attackDirection = "left";
		attacking = true;
	}
	else if (keyboard_check(ord("E"))) {
		attackDirection = "right";
		attacking = true;
	}
	else {
		//image_speed = 2;
		draw_self();
	}
}
else if (attacking) {
	image_speed = 15;
	if (attackDirection == "left") {
		//draw appropriate attacking sprite for each player type
		
		if (global.currentCharacterIndex == 0) {
			draw_sprite(spr_player_attackLeft, -1, x, y);
		} else if (global.currentCharacterIndex == 1) {
			draw_sprite(spr_player_attackLeft_red, -1, x, y);	
		} else if (global.currentCharacterIndex == 2) {
			draw_sprite(spr_player_attackLeft_green, -1, x, y);	
		} else if (global.currentCharacterIndex == 3) {
			draw_sprite(spr_player_attackLeft_yellow, -1, x, y);
		}
	} else if (attackDirection == "right") {
		if (global.currentCharacterIndex == 0) {
			draw_sprite(spr_player_attackRight, -1, x, y);
		} else if (global.currentCharacterIndex == 1) {
			draw_sprite(spr_player_attackRight_red, -1, x, y);	
		} else if (global.currentCharacterIndex == 2) {
			draw_sprite(spr_player_attackRight_green, -1, x, y);	
		} else if (global.currentCharacterIndex == 3) {
			draw_sprite(spr_player_attackRight_yellow, -1, x, y);
		}
	}
	if (floor(image_index) == 9) {
		attacking = false;	
	}
}