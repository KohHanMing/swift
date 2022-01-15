///@function transition(track1, track2)
///@param {index} track1
///@param {index} track2

function transition(track1, track2){
	audio_sound_gain(global.curr_track_inst, 0, 3000);
	obj_soundtrack_manager.prev_track = track1;
	obj_soundtrack_manager.alarm[0] = room_speed*3;
	if (!audio_is_playing(track2)) {
		global.curr_track_inst = audio_play_sound(track2, 100, true);
	}
	audio_sound_gain(global.curr_track_inst, 0, 0);
	audio_sound_gain(global.curr_track_inst, global.soundtrack_volume*ds_map_find_value(global.sound_vols, track2), 3000);
}