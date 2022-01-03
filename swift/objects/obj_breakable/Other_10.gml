/// @description Take Damage

if (image_index == image_number-1) {
	
	instance_destroy();
	
}
image_index += 1;

audio_play_sound(sfx_wall_break, 99, false);