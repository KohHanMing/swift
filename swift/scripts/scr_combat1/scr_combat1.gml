// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_combat1(){
	if (!audio_is_playing(combat1)) {
		audio_play_sound(combat1,100,false);
	}
}