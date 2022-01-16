if rebinding {
	
	image_blend = c_white;
	sprite_index = spr_menu_button_highlight;
	
	if global.key_escape_pressed {
		
		rebinding = false;
		with(obj_menu_element) disabled = false;
		global.key_escape_pressed = false;
		
	} else if keyboard_check_pressed(vk_anykey) {
		
		variable_global_set(keybind,keyboard_lastkey);
		variable_global_set(keybind_mode,"keyboard");
		rebinding = false;
		with(obj_menu_element) disabled = false;
		
	} else if mouse_check_button_pressed(mb_any) {
		
		variable_global_set(keybind,mouse_lastbutton);
		variable_global_set(keybind_mode,"mouse");
		rebinding = false;
		with(obj_menu_element) disabled = false;
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
			}
		}
		
	} else {
		sprite_index = spr_menu_button; // Reset
		text_offset = 0; // Reset
		image_blend = c_white; // Lighten
	}
}