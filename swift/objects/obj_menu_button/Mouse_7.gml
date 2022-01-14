sprite_index = spr_ui_button; // Reset
text_offset = 0; // Reset

if pressed { // Only execute if left press occured on this button without mouse leaving button
	audio_play_sound(sfx_menu_button_press, 99, false);

	switch(on_click) {
		
		case "LAST_MENU": // Return to previous menu
			with (obj_menu_manager) {
				menu_state = ds_list_find_value(menu_list,ds_list_size(menu_list)-2);
				ds_list_delete(menu_list,ds_list_size(menu_list)-1);
			}
			break;
			
		case "CLOSE_MENU": // Close Menu
			with (obj_menu_manager) {
				menu_state = NONE;
			}
			break;
			
		case "START_GAME": // Start Game
			room_goto(rm_init_game);
			with (obj_menu_manager) {
				menu_state = NONE;
			}
			break;
			
		case "CHANGE_MENU": // Change Menu to target
			with (obj_menu_manager) {
				menu_state = other.target;
			}
			break;
	}
	
}