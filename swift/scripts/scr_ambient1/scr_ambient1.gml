// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ambient1(){
	if (!audio_is_playing(ambient1)) {
		audio_play_sound(ambient1,100,false);
	}
}