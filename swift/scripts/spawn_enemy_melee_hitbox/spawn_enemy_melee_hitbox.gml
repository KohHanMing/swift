// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_enemy_melee_hitbox(_hitbox, _offset, _angle){
	with(instance_create_layer(
	sprite_x+_offset*cos(degtorad(_angle)),
	sprite_y-_offset*sin(degtorad(_angle)),
	"Instances",
	_hitbox)) {
		owner = id;
		phy_rotation = -_angle;
	}
}
