/// @description Attempt to Fire

if (firing) {
	// Cooldown not ready
	event_user(0);
}

else if (obj_player.CURR_ENERGY < ENERGY_COST) {
	// Not enough energy
	event_user(1);
}

else {
	// Otherwise, attack
	event_user(2);
}
