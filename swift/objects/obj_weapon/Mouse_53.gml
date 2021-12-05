/// @description Attempt to Fire

if (firing) {
	// Cooldown not ready
	event_perform(ev_other, ev_user0);
}

else if (obj_player.CURR_ENERGY < ENERGY_COST) {
	// Not enough energy
	event_perform(ev_other, ev_user1);
	
}

else {
	// Otherwise, attack
	event_perform(ev_other, ev_user2);
}