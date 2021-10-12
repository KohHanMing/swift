/// @description Tick down spawner if one exists
// You can write your code in this editor
if (instance_exists(obj_load_zone)) {
	with (obj_load_zone) {
		if (triggered) {
			var index = ds_list_find_index(enemy_ids[current_wave], other.id);
			if (index != -1) {
				remaining[current_wave]--;
				ds_list_delete(enemy_ids[current_wave], index);
			}
		}
	}
}
