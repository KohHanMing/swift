// Inherit the parent event
event_inherited();

TARGET_Y = 0; // Dummy TARGET_Y

function create_spawn_pod() {
	/// @description Create Spawn Pod

	switch behaviour {
	
		case "open":
			spawn_pod_opening(); // Create Pod that opens immediately
			break;
		
		case "idle":
			// Create Idle Pod that can be broken
			var pod = instance_create_layer(x,y,"Instances",obj_spawn_pod_idle);
		
			// Pass necessary variables to Idle Pod
			pod.CURR_ENEMY = CURR_ENEMY;
			pod.SPAWN_X = SPAWN_X;
			pod.SPAWN_Y = SPAWN_Y;
			break;
	}

	instance_destroy();
}