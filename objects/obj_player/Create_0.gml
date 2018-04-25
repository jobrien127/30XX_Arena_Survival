//Some of the variables defined here will serve
//as the default variables for the character.
//In other words, if the player chooses the average
//character, all of these variables will remain as they
//are. However, if the player were to choose another
//character type, some of these may be changed.
//Variables for movement
xVelocity = 0;
yVelocity = 0;
maxVelocity = 3.0;
//Variables for dashing
inDashingState = false;
dashingCounter = 0;
dashDirection = "";
dashSpeed = 15;
dashBuffer = 0;
//Variables for player health
playerHealth = 100;
//Variables for attack
attackStat = 5;
//Variables for defense
defenseStat = 5;
// currentCharacterIndex:
// 0: Blue (Master of None)
// 1: Red (Attack)
// 2: Green (Defense)
// 3: Yellow (Speed)
if (global.currentCharacterIndex == 0) {
	sprite_index = spr_player;
}
else if (global.currentCharacterIndex == 1) {
	sprite_index = spr_player_red;
	playerHealth = 80;
	attackStat = 10;
	defenseStat = 3;
}
else if (global.currentCharacterIndex == 2) {
	sprite_index = spr_player_green;
	playerHealth = 125;
	maxVelocity = 2.0;
	attackStat = 3;
	defenseStat = 10;
}
else if (global.currentCharacterIndex == 3) {
	sprite_index = spr_player_yellow;
	playerHealth = 80;
	maxVelocity = 5;
	defenseStat = 3;
}

//State variables
cannotBeHit = false;
enemyDamageBuffer = 0;
attacking = false;
attackDirection = "left";
enemyHit = false;
var hitbox;