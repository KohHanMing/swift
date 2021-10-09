/// @description Manual Collision Check

var _inst = instance_place(x, y, obj_player);
if _inst != noone
{
    take_damage(_inst, DAMAGE);
    instance_destroy();
}
