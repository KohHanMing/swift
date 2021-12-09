/// @description Take Damage

if (image_index == image_number-1) {
	
	instance_destroy();
	instance_destroy(obj_wall_shadow);
	with(obj_wall_static) {event_perform(ev_create,0)}
}
image_index += 1;

audio_play_sound(sfx_wall_break, 99, false);