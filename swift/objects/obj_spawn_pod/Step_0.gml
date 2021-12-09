/// @description Insert description here
// You can write your code in this editor


if (y < TARGET_Y) { //If target y is not reached
	y += 10;
	if (y > TARGET_Y - 20 and image_speed != 1) {
		image_speed = 1;
		audio_play_sound_at(sfx_spawnpod_impact,x,y,0,falloff_ref_dist,falloff_max_dist,1,false,99);
	}
}