/// @description track and env determines current soundtrack
audio_group_load(music);
audio_group_load(sfx);
is_loaded = false;

var sound_assets = tag_get_asset_ids("sound", asset_sound);
globalvar sound_vols;
sound_vols = ds_map_create();
for (var i = 0; i < array_length(sound_assets); i++) {
	ds_map_add(sound_vols, sound_assets[i], audio_sound_get_gain(sound_assets[i]));
}

globalvar curr_track;
curr_track = "main";
globalvar curr_track_inst;
curr_track_inst = -1;
globalvar curr_env;
curr_env = "1"
prev_track = -1;

is_mid_level = false;

globalvar soundtrack_volume;
soundtrack_volume = 1;
globalvar sfx_volume;
sfx_volume = 1;

audio_falloff_set_model(audio_falloff_linear_distance_clamped);
globalvar falloff_ref_dist;
falloff_ref_dist = 100;
globalvar falloff_max_dist;
falloff_max_dist = 300;

audio_listener_orientation(0,1,0,0,0,0);