

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
		xVelocity += 0.1;	
	} else if (xVelocity > 0) {
		xVelocity -= 0.1;	
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
		yVelocity += 0.1;	
	} else if (yVelocity > 0) {
		yVelocity -= 0.1;	
	}	
}

//TODD: dash and passive ability
if keyboard_check(vk_space) {
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
//if keyboard_check(vk_shift);
