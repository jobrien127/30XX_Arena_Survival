// Controls fade-in
with(obj_player_select_model) {
	if (opacityValue >= 1) {
		if (obj_attribute_selection_text.opacityValue < 1) {
			obj_attribute_selection_text.opacityValue += 0.002;
			obj_attribute_selection_text.image_alpha = opacityValue;	
		}
	}
}

sprite_index = currentAttribute[currentAttributeIndex];