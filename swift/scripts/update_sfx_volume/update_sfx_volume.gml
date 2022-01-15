// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_sfx_volume(){
	var sound_assets = tag_get_asset_ids("sfx", asset_sound);
	for (var i = 0; i < array_length(sound_assets); i++) {
		audio_sound_gain(sound_assets[i], sfx_volume*ds_map_find_value(sound_vols, sound_assets[i]), 0);
	}
}