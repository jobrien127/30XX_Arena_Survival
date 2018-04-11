if (!cannotBeHit) {
	cannotBeHit = true;
	enemyDamageBuffer = 120;
	playerHealth -= 10;
	audio_play_sound(snd_player_hurt_1, 4, 0);
	visible = false;
}
