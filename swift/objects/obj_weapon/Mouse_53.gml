/// @description Attempt to Fire

if !obj_player.control_enabled exit;

if (firing) {
	// Cooldown not ready
	event_user(COOLDOWN_NOT_READY);
}

else if (obj_player.CURR_ENERGY < ENERGY_COST) {
	// Not enough energy
	event_user(NOT_ENOUGH_ENERGY);
}

else {
	// Otherwise, attack
	event_user(FIRE_WEAPON);
}
