// Controls fade-in
with(obj_player_select_model) {
	if (opacityValue >= 1) {
		if (obj_attribute_selection_text.opacityValue < 1) {
			obj_attribute_selection_text.opacityValue += 0.002;
			obj_attribute_selection_text.image_alpha = opacityValue;	
		}
	}
}

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