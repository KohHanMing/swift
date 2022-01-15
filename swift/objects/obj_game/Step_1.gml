/// @description Pause

if !game_paused and keyboard_check_pressed(vk_escape) {
	game_paused = true;
	with (obj_menu_manager) menu_state = PAUSE_MENU;
}