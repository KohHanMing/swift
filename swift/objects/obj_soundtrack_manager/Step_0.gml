/// @description Choose soundtrack to play
if (is_loaded) {
	if (instance_exists(obj_load_zone)) {
		if (obj_load_zone.triggered and global.curr_track == "ambient") {
			global.curr_track = "combat";
			is_mid_level = true;
		} else if (!is_mid_level and !obj_load_zone.triggered and global.curr_track == "combat") {
			global.curr_track = "ambient";
		}
	} else if (!is_mid_level) {
		if (global.curr_track == "combat") {
			global.curr_track = "ambient";
		}
	}

	if (!audio_is_playing(get_curr_trackid())) {
		transition(global.curr_track_inst, get_curr_trackid());
	}
}