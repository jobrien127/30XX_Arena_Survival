// Controls model fade-in
if (opacityValue < 1) {
	opacityValue += 0.02;
	image_alpha = opacityValue;	
}

// Controls sprite changing
if (keyboard_check_pressed(vk_left)) {
  if (currentCharacterIndex != 0) {
	currentCharacterIndex--;  
  }
}
if (keyboard_check_pressed(vk_right)) {
	 if (currentCharacterIndex != 3) {
		currentCharacterIndex++;	
	}
}	

sprite_index = currentCharacter[currentCharacterIndex];