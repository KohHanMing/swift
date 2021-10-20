/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);

if (image_index == image_number-1) {
	instance_destroy();
}
image_index += 1;

audio_play_sound(sfx_wall_break, 99, false);