// Controls sprite changing
with(obj_player_select_model) {
	if (currentCharacterIndex != 0) {
		currentCharacterIndex--;  
		audio_play_sound(snd_menu_selection_1, 3, 0);
	}
	sprite_index = currentCharacter[currentCharacterIndex];
	
}

// Controls att ribute selection text changing
with(obj_attribute_selection_text) {
	if (currentAttributeIndex != 0) {
		currentAttributeIndex--;  
		audio_play_sound(snd_menu_selection_1, 3, 0);
	}	
	sprite_index = currentAttribute[currentAttributeIndex];
}

