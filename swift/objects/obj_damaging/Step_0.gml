/// @description Manual Breakable Check

// Manual Breakable Collision Check
var _list = ds_list_create();
var _num = instance_place_list(x, y, obj_breakable, _list, true);

if _num > 0 {
	for (var i = 0; i < _num; i++) {
		if expired break;
		manual_breakable_collision(_list[| i]);
	}
}
ds_list_destroy(_list);


// Manual Spawn Pod Collision Check
var _list = ds_list_create();
var _num = instance_place_list(x, y, obj_spawn_pod_idle, _list, true);

if _num > 0 {
	for (var i = 0; i < _num; i++) {
		if expired break;
		manual_breakable_collision(_list[| i]);
	}
}
ds_list_destroy(_list);