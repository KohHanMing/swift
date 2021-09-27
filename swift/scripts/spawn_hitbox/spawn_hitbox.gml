// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_hitbox(_hitbox, _offset, _angle){
	instance_create_layer(x+_offset*cos(degtorad(_angle)),
		y-_offset*sin(degtorad(_angle)) + 25, // hard code extra offset until player hitbox is fixed
		"Instances",
		_hitbox)
}
