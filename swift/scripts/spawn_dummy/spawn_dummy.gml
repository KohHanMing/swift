function spawn_dummy(_xcoord, _ycoord, _curr_enemy){
	var dummy = instance_create_layer(_xcoord, _ycoord, "Instances", obj_spawn_dummy);
	dummy.sprite_index = _curr_enemy.sprite_index;
	dummy.CURR_ENEMY = _curr_enemy;
	return dummy;
}