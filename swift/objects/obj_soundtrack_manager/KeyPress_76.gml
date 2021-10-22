/// @description Sound up
if (curr_volume < 1) {
	curr_volume += 0.1;
	audio_set_master_gain(0, curr_volume);
}