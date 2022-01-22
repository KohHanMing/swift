if obj_game.game_paused {
	
	if !game_paused disable_animation();
	
	disable_alarms();
	disable_movement();
	
	game_paused = true;
	
} else if game_paused {
	
	enable_animation();
	game_paused = false;
	
}