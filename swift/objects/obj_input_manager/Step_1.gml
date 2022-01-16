for (var i = 0; i < array_length(key_list); i++) {
	
	var key = "key_" + key_list[i];
	var key_value = variable_global_get(key);
	
	var key_down = key + "_down";
	var key_pressed = key + "_pressed";
	var key_mode = variable_global_get(key + "_mode");
	
	// Check Down
	if key_mode == "mouse" and mouse_check_button(key_value) variable_global_set(key_down,true);
	else if key_mode == "keyboard" and keyboard_check(key_value) variable_global_set(key_down,true);
	else variable_global_set(key_down,false);
	
	// Check Pressed
	if key_mode == "mouse" and mouse_check_button_pressed(key_value) variable_global_set(key_pressed,true);
	else if key_mode == "keyboard" and keyboard_check_pressed(key_value) variable_global_set(key_pressed,true);
	else variable_global_set(key_pressed,false);
	
}