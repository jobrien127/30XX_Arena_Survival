 //Basic player movement
//Left movement
if keyboard_check(ord("A")){
	if (xVelocity > -maxVelocity) {
		xVelocity -= 0.1;	
	}
	draw_sprite(spr_player_moveLeft, -1, x, y);
}
//Right movement
if keyboard_check(ord("D")) {
	if (xVelocity < maxVelocity) {
		xVelocity += 0.1;	
	}
	draw_sprite(spr_player_moveRight, -1, x,y);
}
//Reducing xVelocity
if (!keyboard_check(ord("A")) && !keyboard_check(ord("D"))) {
	if (xVelocity < 0) {
		xVelocity += 0.5;	
	} else if (xVelocity > 0) {
		xVelocity -= 0.5;	
	}
}
//Upward movement
if keyboard_check(ord("W")) {
	if (yVelocity > -maxVelocity) {
		yVelocity -= 0.1;	
	}
	draw_sprite(spr_player_moveLeft, -1, x, y);
}
//Downward movement
if keyboard_check(ord("S")) {
	if (yVelocity < maxVelocity) {
		yVelocity += 0.1;	
	}
	draw_sprite(spr_player_moveLeft, -1, x, y);
}
//Reducing yVelocity
if (!keyboard_check(ord("W")) && !keyboard_check(ord("S"))) {
	if (yVelocity < 0) {
		yVelocity += 0.5;	
	} else if (yVelocity > 0) {
		yVelocity -= 0.5;	
	}	
}

//TODD: dash and passive ability
if keyboard_check(vk_space) {
	if (!inDashingState && dashBuffer <= 0) {
		audio_play_sound(snd_dash, 4, 0);
		dashBuffer = 300;
		//Determines the dash direction
		if (keyboard_check(ord("D")) && keyboard_check(ord("S"))) {
			dashDirection = "right-down";
			inDashingState = true;	
			dashingCounter = 5;
		} else if (keyboard_check(ord("D")) && keyboard_check(ord("W"))) {
			dashDirection = "right-up";	
			inDashingState = true;	
			dashingCounter = 5;
		} else if (keyboard_check(ord("A")) && keyboard_check(ord("S"))) {
			dashDirection = "left-down";
			inDashingState = true;	
			dashingCounter = 5;
		} else if (keyboard_check(ord("A")) && keyboard_check(ord("W"))) {
			dashDirection = "left-up";	
			inDashingState = true;	
			dashingCounter = 5;
		} else if (keyboard_check(ord("D"))) {
			dashDirection = "right";	
			inDashingState = true;	
			dashingCounter = 5;
		} else if (keyboard_check(ord("A"))) {
			dashDirection = "left";	
			inDashingState = true;	
			dashingCounter = 5;
		} else if (keyboard_check(ord("S"))) {
			dashDirection = "down";	
			inDashingState = true;	
			dashingCounter = 5;
		} else if (keyboard_check(ord("W"))) {
			dashDirection = "up";	
			inDashingState = true;	
			dashingCounter = 5;
		}
	}
}

if (inDashingState) {
	if (dashingCounter > 0) {
		dashingCounter--;
		if (dashDirection == "right-down") {
			x += dashSpeed;
			y += dashSpeed;
		} else if (dashDirection == "right-up") {
			x += dashSpeed;
			y -= dashSpeed;
		} else if (dashDirection == "left-down") {
			x -= dashSpeed;
			y += dashSpeed;
		} else if (dashDirection == "left-up") {
			x -= dashSpeed;
			y -= dashSpeed;
		} else if (dashDirection == "right") {
			x += dashSpeed;	
		} else if (dashDirection == "left") {
			x -= dashSpeed;	
		} else if (dashDirection == "down") {
			y += dashSpeed;	
		} else if (dashDirection == "up") {
			y -= dashSpeed;	
		}
	} else {
		inDashingState = false;	
		dashDirection = "";
	}
} else {
	x += xVelocity;
	y += yVelocity;	
}

if (dashBuffer > 0) {
	dashBuffer--;	
}
//if keyboard_check(vk_shift);
show_debug_message(string(cannotBeHit));
//Dealing damage to the player
if (enemyDamageBuffer <= 0) {
	cannotBeHit = false;	
	visible = true;
} else {
	enemyDamageBuffer--;
	if (enemyDamageBuffer % 5 == 0) {
		visible = true;	
	} else {
		visible = false;
	}
}

if (x > 2048) x = 2048;
if (x < 0) x = 0;
if (y > 768) y = 768;
if (y < 0) y = 0;

if (keyboard_check(ord("Q"))) {
		attackDirection = "left";
		attacking = true;
	}
	else if (keyboard_check(ord("E"))) {
		attackDirection = "right";
		attacking = true;
	}


//Gameover
if (playerHealth <= 0) {
	room_goto(results_room);
}

//hitbox
enemyHit = false;
if (attacking){
		
if (attackDirection = "right"){
	hitbox = collision_rectangle(x + 16, y - 40, x + 63, y + 11,obj_enemy, false, true);
	if hitbox != noone
   {
   with (hitbox) {
	   hp -= obj_player.attackStat;
	   	hit = 1;
		damaged = true;
   }
   }
}
else if (attackDirection = "left"){
	hitbox = collision_rectangle(x - 64, y - 40, x - 17, y + 11,obj_enemy, false, true);

	if (hitbox != noone)
   {
	   
   with (hitbox){
	   hp -= obj_player.attackStat;
	   	hit = 0.75;
		damaged = true;
   }
   }}
}