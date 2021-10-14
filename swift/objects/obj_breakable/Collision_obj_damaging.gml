/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);

if (image_index == image_number-1) {
	
	instance_destroy();
	instance_destroy(obj_wall_shadow);
	with(obj_wall_static) {event_perform(ev_create,0)}
}
image_index += 1;