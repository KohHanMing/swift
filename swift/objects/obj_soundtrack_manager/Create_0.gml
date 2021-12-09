/// @description track and env determines current soundtrack
audio_group_load(music);
audio_group_load(sfx);
is_loaded = false;

curr_track = "main";
curr_track_inst = -1;
curr_env = "1"
prev_track = -1;

is_mid_level = false;

curr_volume = 0.8;

audio_falloff_set_model(audio_falloff_linear_distance_clamped);
globalvar falloff_ref_dist;
falloff_ref_dist = 100;
globalvar falloff_max_dist;
falloff_max_dist = 300;

audio_listener_orientation(0,1,0,0,0,0);