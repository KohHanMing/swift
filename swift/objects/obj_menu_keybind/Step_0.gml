if rebinding {
	
	image_blend = c_white;
	sprite_index = spr_menu_button_highlight;
	
	if global.key_escape_pressed { // Cancel binding
		
		rebinding = false;
		with(obj_menu_element) disabled = false; // Enable other menu elemnets
		global.key_escape_pressed = false; // Override escape key
		
	} else if keyboard_check_pressed(vk_anykey) { // Handle keyboard keybind
		
		variable_global_set(keybind,keyboard_lastkey); // Store keybind
		variable_global_set(keybind_mode,"keyboard"); // Keybind is a keyboard input
		rebinding = false;
		with(obj_menu_element) disabled = false; // Enable other menu elements
		
	} else if mouse_check_button_pressed(mb_any) { // Handle mouse keybind
		
		variable_global_set(keybind,mouse_lastbutton); // Store keybind
		variable_global_set(keybind_mode,"mouse"); // Keybind is a mouse input
		rebinding = false;
		with(obj_menu_element) disabled = false; // Enable other menu elements
	}
	
} else {
	
	if !disabled and instance_position(mouse_x,mouse_y,id) {
		image_blend = c_gray; // Darken
		
		if mouse_check_button_pressed(mb_left) {
			sprite_index = spr_menu_button_pressed; // Button is pressed down
			text_offset = 2; // Offset text
			pressed = true; // Left Pressed occured on button
		} else if mouse_check_button_released(mb_left) {
			sprite_index = spr_menu_button; // Reset
			text_offset = 0; // Reset
			if pressed { // Only execute if left press occured on this button without mouse leaving button
				audio_play_sound(sfx_menu_button_press, 99, false);
				with(obj_menu_keybind) rebinding = false;
				with(obj_menu_element) disabled = true;
				rebinding = true;
				pressed = false;
			}
		}
		
	} else {
		sprite_index = spr_menu_button; // Reset
		text_offset = 0; // Reset
		image_blend = c_white; // Lighten
	}
}