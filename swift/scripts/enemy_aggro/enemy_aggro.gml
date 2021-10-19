///@function enemy_aggro(_instance)
///@param {index} _instance
function enemy_aggro(_instance){
	var obj_index = _instance.object_index;

	if (object_is_ancestor(obj_index, obj_slime)) {
		switch (obj_index) {
			case obj_melee_slime:
				melee_slime_aggro(_instance);
			break;
			case obj_ranged_slime:
				ranged_slime_aggro();
			break;
		}
	}
}
