// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_sfx(sfxid, is_scaling){
	if (is_scaling) {
		return audio_play_sound_at(sfxid,x,y,0,falloff_ref_dist,falloff_max_dist,1,false,99);
	} else {
		return audio_play_sound(sfxid, 99, false);
	}
}