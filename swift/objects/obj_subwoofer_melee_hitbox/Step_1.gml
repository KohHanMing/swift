/// @description Post-Create

if !variable_instance_exists(id,"POST_CREATE") {
	add_camera_shake(2,LIFETIME_SECONDS); // Add Camera Shake	
}

// Inherit the parent event
event_inherited();

