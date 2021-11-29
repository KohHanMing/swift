/// @description Insert description here
// You can write your code in this editor
if (!triggered && place_meeting(x, y, obj_player)) {
	if (trigger_doors) {
		with (obj_hdoor) closed = true;
		with (obj_vdoor) closed = true;
	}
	triggered = true;
	
	for (var i = 0; i < ds_list_size(waves); i++) {
		var thisentry = ds_list_find_value(waves, i);
		if (thisentry[WAVE] > total_waves) {
			total_waves++;
			remaining[total_waves] = 0;
		}
		remaining[total_waves]++
		
		enemy_ids[i] = ds_list_create();
	}
} else if (triggered) {
	if (!has_destroyed_marker) {
		has_destroyed_marker = true;
		instance_destroy(marker.id);	
	}
	for (var i = 0; i < ds_list_size(waves); i++) {
		var next = ds_list_find_value(waves, i);
		if (next[WAVE] == current_wave) && (next[DELAY] == timer) {
			var spawnpoint = next[SPAWN];
			
			// Spawn pod above desired coord
			spawn_pod(spawn[spawnpoint,0],spawn[spawnpoint,1], next[TYPE]);
			
			// Keep Track of enemy ids
			ds_list_add(enemy_ids[current_wave], 
				instance_create_layer(spawn[spawnpoint,0], 
					spawn[spawnpoint,1], 
					"Instances", 
					next[TYPE]
				)
			);
			
			// Facilitate swarming behaviour
			var counter = 0;
			with (obj_melee_slime) {
				sector_number = counter % 8;
				counter += 5;
			}
		}
	}
	
	timer++;
	
	if (remaining[current_wave] <= 0) {
		if (current_wave == total_waves) {
			if (trigger_doors) {
				with (obj_hdoor) closed = false;
				with (obj_vdoor) closed = false;
			}
			instance_destroy();
		} else {
			current_wave++;
			timer = 0;
		}
	}
}
			