/// @description Insert description here
// You can write your code in this editor


if (y < TARGET_Y) { //If target y is not reached
	y += 10;
	if (y > TARGET_Y - 20 and image_speed != 1) {
		image_speed = 1;
		audio_falloff_set_model(audio_falloff_exponent_distance);
		audio_play_sound_at(sfx_spawnpod_impact,x,y,0,50,100,1,false,99);
	}
}