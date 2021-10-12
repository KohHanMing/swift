/// @description Tick down spawner if one exists
// You can write your code in this editor
if (instance_exists(obj_load_zone)) {
	with (obj_load_zone) {
		if (triggered) {
			remaining[current_wave]--;
		}
	}
}