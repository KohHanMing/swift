// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_curr_trackid(){
	var trackname
	if (global.curr_track == "main" or global.curr_track == "tutorial_combat" or global.curr_track == "ending") {
		trackname = global.curr_track;
	} else {
		trackname = global.curr_track+global.curr_env;
	}
	return asset_get_index(trackname);
}