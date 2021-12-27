function load_level_defaults(){
	with(obj_game) {
		ambient_darkness = 0.75;
	}
	
	with(obj_player) {
		ENERGY_INCREMENT = 1;
		CURR_ENERGY = MAX_ENERGY;
	}
}