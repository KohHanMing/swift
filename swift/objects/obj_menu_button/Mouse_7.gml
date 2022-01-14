sprite_index = spr_ui_button;
text_offset = 0;

if pressed {
	audio_play_sound(sfx_menu_button_press, 99, false);

	switch(on_click) {
		case "CLOSE_MENU":
			with (obj_menu_manager) {
				menu_state = NONE;
			}
			break;
		case "START_GAME":
			room_goto(rm_init_game);
			with (obj_menu_manager) {
				menu_state = NONE;
			}
	}
	
}