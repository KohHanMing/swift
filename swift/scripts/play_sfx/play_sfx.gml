function play_sfx(sfxid, is_scaling){
	if (is_scaling) {
		return audio_play_sound_at(sfxid,x,y,0,global.falloff_ref_dist,global.falloff_max_dist,1,false,99);
	} else {
		return audio_play_sound(sfxid, 99, false);
	}
}
