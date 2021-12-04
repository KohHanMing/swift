/// @description Insert description here
// You can write your code in this editor
if (sprite_index == spr_pod_dropping) {
	spawn_dummy(SPAWN_X, SPAWN_Y, CURR_ENEMY);
	sprite_index = spr_pod_opening;
	image_speed = 1.5;
} else if (sprite_index == spr_pod_opening) {
	instance_destroy();	
}