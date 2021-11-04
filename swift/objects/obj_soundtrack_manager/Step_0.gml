/// @description Choose soundtrack to play
var trackname = curr_track+curr_env;
var trackid = asset_get_index(trackname);

if (instance_exists(obj_load_zone)) {
	if (obj_load_zone.triggered and curr_track == "ambient") {
		curr_track = "combat";
	} else if (!obj_load_zone.triggered and curr_track == "combat") {
		curr_track = "ambient";
	}
} else if (curr_track == "combat") {
	curr_track = "ambient"
}

if (!audio_is_playing(trackid)) {
	transition(obj_soundtrack_manager.curr_track_inst, trackid);
}