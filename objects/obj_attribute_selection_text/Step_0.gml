// Controls sprite changing
if (keyboard_check_pressed(vk_left)) {
  if (currentAttributeIndex != 0) {
	currentAttributeIndex--;  
  }
}
if (keyboard_check_pressed(vk_right)) {
	if (currentAttributeIndex != 3) {
		currentAttributeIndex++;	
	}
}	

sprite_index = currentAttribute[currentAttributeIndex];