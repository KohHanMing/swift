/// @description Tick down spawner if one exists
// You can write your code in this editor
audio_stop_sound(curr_idle_sfx);
audio_play_sound_at(DEATH_SFX,x,y,0,falloff_ref_dist,falloff_max_dist,1,false,99);

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

// Death Particle
repeat(50) instance_create_layer(sprite_x+random_range(-10,10),y+random_range(-10,10),"Instances",obj_particle_enemy_death);
