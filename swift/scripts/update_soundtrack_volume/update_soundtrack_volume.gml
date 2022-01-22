// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_soundtrack_volume(){
	var sound_assets = tag_get_asset_ids("soundtrack", asset_sound);
	for (var i = 0; i < array_length(sound_assets); i++) {
		audio_sound_gain(sound_assets[i], global.soundtrack_volume*ds_map_find_value(global.sound_vols, sound_assets[i]), 0);
	}
}