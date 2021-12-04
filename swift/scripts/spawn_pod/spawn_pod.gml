// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_pod(_xcoord, _ycoord, _curr_enemy){
	var pod = instance_create_layer(_xcoord, _ycoord - 200, "Instances", obj_spawn_pod);
	pod.depth = -_ycoord;
	pod.TARGET_Y = _ycoord;
	pod.CURR_ENEMY = _curr_enemy;
	pod.SPAWN_X = _xcoord;
	pod.SPAWN_Y = _ycoord - 16; //compensate for diff origins
	
}