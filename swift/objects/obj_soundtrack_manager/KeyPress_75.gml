/// @description Sound down
if (soundtrack_volume > 0) {
	soundtrack_volume -= 0.1;
	audio_sound_gain(curr_track_inst, soundtrack_volume*ds_map_find_value(sound_vols, get_curr_trackid()), 0);
}