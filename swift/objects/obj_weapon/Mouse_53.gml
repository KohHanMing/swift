/// @description Attempt to Fire

if (firing) {
	// Cooldown not ready
	event_user(0);
}

else if (obj_player.CURR_ENERGY < ENERGY_COST) {
	// Not enough energy
	event_user(1);
	audio_play_sound(sfx_noenergy,99,false);
}

else {
	// Otherwise, attack
	event_user(2);
}
