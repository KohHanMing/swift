// Inherit Event
event_inherited();

// Check and handle death
if (CURR_HEALTH <= 0) {
	// Basic handle death
	if (object_index == obj_player) {
		obj_soundtrack_manager.is_mid_level = false;
		event_user(DEATH); // Player Death
	} else {
		instance_destroy(id);
	}
}
