/// @description Toggle mute all
if (audio_sound_get_gain(curr_track_inst) != 0) {
	audio_sound_gain(curr_track_inst, 0, 0);
} else {
	audio_sound_gain(curr_track_inst, soundtrack_volume*ds_map_find_value(sound_vols, get_curr_trackid()), 0);
}