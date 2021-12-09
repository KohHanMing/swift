/// @description Play idle sfx
// You can write your code in this editor

var i = string(irandom_range(1, 4));
curr_idle_sfx = audio_play_sound_at(
	asset_get_index("sfx_enemy_idle"+i),
	x,y,0,
	falloff_ref_dist,falloff_max_dist,1,
	false,99);