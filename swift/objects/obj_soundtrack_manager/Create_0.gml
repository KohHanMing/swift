/// @description track and env determines current soundtrack

curr_track = "ambient";
curr_track_inst = -1;
curr_env = "1"
prev_track = -1;

is_mid_level = false;

curr_volume = 1;

audio_falloff_set_model(audio_falloff_exponent_distance);