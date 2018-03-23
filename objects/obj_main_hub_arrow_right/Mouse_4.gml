// Controls sprite changing
with(obj_player_select_model) {
	if (currentCharacterIndex != 3) {
		currentCharacterIndex++;	
		audio_play_sound(snd_menu_selection_1, 3, 0);
	}	
	sprite_index = currentCharacter[currentCharacterIndex];
}

// Controls attribute selection text changing
with(obj_attribute_selection_text) {
	if (currentAttributeIndex != 3) {
		currentAttributeIndex++;	
		audio_play_sound(snd_menu_selection_1, 3, 0);
	}	
	sprite_index = currentAttribute[currentAttributeIndex];
}

