//Drawing for movement
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
else {
	draw_self();
}
