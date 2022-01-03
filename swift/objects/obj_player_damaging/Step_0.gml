/// @description Manual Collision Check

event_inherited();

var _list = ds_list_create();
var _num = instance_place_list(x, y, obj_enemy, _list, true);

if _num > 0 {
	for (var i = 0; i < _num; i++) {
		if expired break;
		manual_projectile_collision(_list[| i]);
	}
}

ds_list_destroy(_list);