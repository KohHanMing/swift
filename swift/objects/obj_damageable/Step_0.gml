/// @description Check and handle death
// You can write your code in this editor

if (CURR_HEALTH <= 0) {
	// Basic handle death
	if (object_index == obj_player) {
		obj_soundtrack_manager.is_mid_level = false;
		room_restart();
	} else {
		instance_destroy(id);
	}
}
