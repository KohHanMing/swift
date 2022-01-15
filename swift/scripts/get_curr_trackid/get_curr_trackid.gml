// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_curr_trackid(){
	var trackname
	if (curr_track == "main" or curr_track == "tutorial_combat" or curr_track == "ending") {
		trackname = curr_track;
	} else {
		trackname = curr_track+curr_env;
	}
	return asset_get_index(trackname);
}