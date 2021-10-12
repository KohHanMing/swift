/// @description Manual Collision Check

var _inst = instance_place(x, y, obj_enemy);
if _inst != noone {
	manual_projectile_collision(_inst);
}