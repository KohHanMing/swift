/// @description Insert description here
// You can write your code in this editor


if (y < TARGET_Y) { //If target y is not reached
	y += 10;
	if (y > TARGET_Y - 20 and image_speed != 1) {
		image_speed = 1;
		play_sfx(sfx_spawnpod_impact, true);
	}
}