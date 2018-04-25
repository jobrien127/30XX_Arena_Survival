if (attacking) {
	audio_play_sound(snd_menu_selection_2, 4, 0);	
	with(other) {
		//hp -= obj_player.attackStat;
		//if (hp <= 0){
		//instance_destroy();	
		//global.currentScore++;
		//}
	}
}
else if (!attacking && !cannotBeHit) {
	cannotBeHit = true;
	enemyDamageBuffer = 120;
	playerHealth -= 10;
	audio_play_sound(snd_player_hurt_1, 4, 0);
	visible = false;
}
