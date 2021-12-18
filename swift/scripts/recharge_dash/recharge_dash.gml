// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function recharge_dash(){
	if (CURR_DASH >= MAX_DASH) {
		CURR_DASH = MAX_DASH;	
	} else {
		CURR_DASH += DASH_RECHARGE_RATE;
		if (CURR_DASH >= MAX_DASH) {
			audio_play_sound(sfx_fullenergy,99,false);
		}
	}
}