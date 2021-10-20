/// @description Toggle mute all
if (audio_get_master_gain(0) != 0) {
	audio_set_master_gain(0, 0);
} else {
	audio_set_master_gain(0, curr_volume);
}