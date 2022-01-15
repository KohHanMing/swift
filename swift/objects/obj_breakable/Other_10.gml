/// @description Take Damage

if (image_index == image_number-1) {
	
	destroy_wall(id);
	
}
image_index += 1;

play_sfx(sfx_wall_break, false);