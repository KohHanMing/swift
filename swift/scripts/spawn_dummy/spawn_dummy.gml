// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_dummy(_xcoord, _ycoord, _type){
	var dummy = instance_create_layer(_xcoord, _ycoord, "Instances", obj_spawn_dummy);
	dummy.sprite_index = _type.sprite_index;
	dummy.ENEMY_STORED = _type;
	dummy.SPAWN_X = _xcoord;
	dummy.SPAWN_Y = _ycoord;
}