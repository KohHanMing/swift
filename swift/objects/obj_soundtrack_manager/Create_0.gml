/// @description track and env determines current soundtrack
audio_group_load(music);
audio_group_load(sfx);
is_loaded = false;

var sound_assets = tag_get_asset_ids("sound", asset_sound);
global.sound_vols = ds_map_create();
for (var i = 0; i < array_length(sound_assets); i++) {
	ds_map_add(global.sound_vols, sound_assets[i], audio_sound_get_gain(sound_assets[i]));
}

global.curr_track = "main";
global.curr_track_inst = -1;
global.curr_env = "1"
prev_track = -1;

is_mid_level = false;

global.soundtrack_volume = 1;
global.sfx_volume = 1;

audio_falloff_set_model(audio_falloff_linear_distance_clamped);
global.falloff_ref_dist = 100;
global.falloff_max_dist = 300;

audio_listener_orientation(0,1,0,0,0,0);