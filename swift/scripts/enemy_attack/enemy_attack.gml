///@function enemy_attack(_instance)
///@param {index} _instance
function enemy_attack(_instance){
	var obj_index = _instance.object_index;
	
	switch (obj_index) {
		case obj_basic_melee:
			basic_melee_attack();
		break;
		case obj_basic_ranged:
			basic_ranged_attack();
		break;
		case obj_basic_ranged_tutorial:
			basic_ranged_attack();
		break;
	}
	
	if (object_is_ancestor(obj_index, obj_slime)) {
		switch (obj_index) {
			case obj_melee_slime:
				melee_slime_attack();
			break;
			case obj_ranged_slime:
				ranged_slime_attack();
			break;
		}
	}
}
