// Controls sprite changing
with(obj_player_select_model) {
	if (currentCharacterIndex != 3) {
		currentCharacterIndex++;	
	}
	sprite_index = currentCharacter[currentCharacterIndex];
}

// Controls attribute selection text changing
with(obj_attribute_selection_text) {
	if (currentAttributeIndex != 3) {
		currentAttributeIndex++;	
	}
	sprite_index = currentAttribute[currentAttributeIndex];
}

