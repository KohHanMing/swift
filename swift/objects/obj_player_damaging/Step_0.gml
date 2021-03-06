/// @description Manual Collision Check

event_inherited();

var _list = ds_list_create();
var _num = instance_place_list(x, y, obj_enemy, _list, false);

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
		else if _array[i].falling_time > 0 continue; // Do not collide with falling enemies
		manual_projectile_collision(_array[i]);
	}
}

ds_list_destroy(_list);