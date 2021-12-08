/// @description Tick down spawner if one exists
// You can write your code in this editor
audio_play_sound(DEATH_SFX, 99, false);

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

for (var i=0;i<50;i++) {
	instance_create_layer(sprite_x+random_range(-10,10),sprite_y+random_range(-10,10),"Instances",obj_particle_enemy_death);
}
