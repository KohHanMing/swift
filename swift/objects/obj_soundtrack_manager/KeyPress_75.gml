/// @description Sound down
if (curr_volume > 0) {
	curr_volume -= 0.1;
	audio_sound_gain(curr_track_inst, curr_volume, 0);
}