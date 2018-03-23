// Controls sprite changing
with(obj_player_select_model) {
	if (currentCharacterIndex != 0) {
		currentCharacterIndex--;  
	}
	show_debug_message(string(currentCharacterIndex));
	sprite_index = currentCharacter[currentCharacterIndex];
}

// Controls attribute selection text changing
with(obj_attribute_selection_text) {
	if (currentAttributeIndex != 0) {
		currentAttributeIndex--;  
	}
	sprite_index = currentAttribute[currentAttributeIndex];
}

