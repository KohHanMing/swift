// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_pod(_xcoord, _ycoord, _type){
	var pod = instance_create_layer(_xcoord, _ycoord, "Instances", obj_spawn_pod);
	pod.ENEMY_STORED = _type;
	pod.SPAWN_X = _xcoord;
	pod.SPAWN_Y = _ycoord - 16; //compensate for diff origins
}