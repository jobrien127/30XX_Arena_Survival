// currentCharacterIndex:
// 0: Blue
// 1: Red
// 2: Green
// 3: Yellow
if (global.currentCharacterIndex == 0) {
	sprite_index = spr_player;
}
else if (global.currentCharacterIndex == 1) {
	sprite_index = spr_player_red;
}
else if (global.currentCharacterIndex == 2) {
	sprite_index = spr_player_green;
}
else if (global.currentCharacterIndex == 3) {
	sprite_index = spr_player_yellow;
}

//Variables for movement
xVelocity = 0;
yVelocity = 0;
maxVelocity = 5.5;
//Variables for dashing
inDashingState = false;
dashingCounter = 0;
dashDirection = "";
dashSpeed = 15;
//Variables for player health
playerHealth = 100;