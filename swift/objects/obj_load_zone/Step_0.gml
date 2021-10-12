/// @description Insert description here
// You can write your code in this editor
if (!triggered && place_meeting(x, y, obj_player)) {
	triggered = true;
	
	for (var i = 0; i < ds_list_size(waves); i++) {
		var thisentry = ds_list_find_value(waves, i);
		if (thisentry[WAVE] > total_waves) {
			total_waves++;
			remaining[total_waves] = 0;
		}
		remaining[total_waves]++
	}
} else if (triggered) {
	for (var i = 0; i < ds_list_size(waves); i++) {
		var next = ds_list_find_value(waves, i);
		if (next[WAVE] == current_wave) && (next[DELAY] == timer) {
			var spawnpoint = next[SPAWN];
			instance_create_layer(spawn[spawnpoint,0], spawn[spawnpoint,1], "Instances", next[TYPE]);
		}
	}
	
	timer++;
	
	if (remaining[current_wave] <= 0) {
		if (current_wave == total_waves) {
			instance_destroy();
		} else {
			current_wave++;
			timer = 0;
		}
	}
}
			