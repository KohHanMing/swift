/// @description Post-Create

if !variable_instance_exists(id,"POST_CREATE") {
	// Start kill timer
	alarm[1] = room_speed * LIFETIME_SECONDS;
	POST_CREATE = true;
}
