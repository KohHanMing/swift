///@function transition(track1, track2)
///@param {index} track1
///@param {index} track2

function transition(track1, track2){
	audio_sound_gain(track1, 0, 3000);
	obj_soundtrack_manager.prev_track = track1;
	obj_soundtrack_manager.alarm[0] = room_speed*3;
	if (!audio_is_playing(track2)) {
		obj_soundtrack_manager.curr_track_inst = audio_play_sound(track2, 100, true);
	}
	audio_sound_gain(track2, 0, 0);
	audio_sound_gain(track2, 1, 3000);
}