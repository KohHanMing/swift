/// @description Manual Collision Check

var _inst = instance_place(x, y, obj_player);
if _inst != noone {
	manual_projectile_collision(_inst);
}