/// @description Manual Breakable Check

// Inherit Event
event_inherited();

// Manual Breakable + Pod Collision Check
var _list = ds_list_create();
var _num = instance_place_list(x, y, obj_breakable, _list, false);
_num += instance_place_list(x, y, obj_spawn_pod_idle, _list, false);

if _num > 0 {
	
	var _array = ds_list_to_array(_list);
	
	if !P_PIERCING array_sort(_array, function(a, b) {
		with(a) var a_dist = distance_to_object(other.owner);
		with(b) var b_dist = distance_to_object(other.owner);
		if a_dist > b_dist return 1;
		else return 0;
	});
	
	for (var i = 0; i < _num; i++) {
		if expired break;
		manual_breakable_collision(_array[i]);
	}
}
ds_list_destroy(_list);