/// @description Manual Collision Check

event_inherited();

var _inst = instance_place(x, y, obj_player);
if _inst != noone {
	manual_projectile_collision(_inst);
}
