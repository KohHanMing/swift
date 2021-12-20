function spawn_pod(_xcoord, _ycoord, _curr_enemy){
	
	var pod_type = irandom(1);
	switch pod_type {
		case 0:
			// Pod drops from 200 above
			var pod = instance_create_layer(_xcoord, _ycoord - 200, "Instances", obj_spawn_pod_dropping);
			break;
		case 1:
			// Pod Rises
			var pod = instance_create_layer(_xcoord, _ycoord + 16, "Instances", obj_spawn_pod_rising);
			break;
	}
	
	with pod {
		TARGET_Y = _ycoord + 16; // Align the Pod so that it contains the enemy
		depth = -TARGET_Y;
		CURR_ENEMY = _curr_enemy;
		SPAWN_X = _xcoord;
		SPAWN_Y = _ycoord;	
	}
}