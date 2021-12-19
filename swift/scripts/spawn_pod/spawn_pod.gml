function spawn_pod(_xcoord, _ycoord, _curr_enemy){
	var pod = instance_create_layer(_xcoord, _ycoord - 200, "Instances", obj_spawn_pod_dropping);
	pod.depth = -_ycoord;
	pod.TARGET_Y = _ycoord + 16;
	pod.CURR_ENEMY = _curr_enemy;
	pod.SPAWN_X = _xcoord;
	pod.SPAWN_Y = _ycoord;
}