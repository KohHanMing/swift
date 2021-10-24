///@function enemy_aggro(_instance)
///@param {index} _instance
function enemy_aggro(_instance){
	var obj_index = _instance.object_index;

	switch (obj_index) {
		case obj_basic_melee:
			basic_melee_aggro();
		break;
		case obj_basic_ranged:
			basic_ranged_aggro();
		break;
	}
	
	if (object_is_ancestor(obj_index, obj_slime)) {
		switch (obj_index) {
			case obj_melee_slime:
				melee_slime_aggro();
			break;
			case obj_ranged_slime:
				ranged_slime_aggro();
			break;
		}
	}
}
