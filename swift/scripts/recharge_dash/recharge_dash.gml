// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function recharge_dash(){
	if (CURR_DASH >= MAX_DASH) {
		CURR_DASH = MAX_DASH;	
	} else {
		CURR_DASH += DASH_RECHARGE_RATE;	
	}
}