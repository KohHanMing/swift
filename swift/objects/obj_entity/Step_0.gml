if obj_game.game_paused {
	
	if !game_paused {
		phy_active = false;
		disable_animation();
	}
	
	disable_alarms();
	disable_movement();
	
	game_paused = true;
	
} else if game_paused {
	enable_animation();
	phy_active = true;
	game_paused = false;
}