/// @description Check and handle death
// You can write your code in this editor

if (HEALTH <= 0) {
	// Basic handle death
	instance_destroy(object_index);
}