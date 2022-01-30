/// @description Returns the weapon_type of _obj
/// @param _weapon {obj} Object ID

function weapon_type(_obj){
	
	// Determine the weapon type
	if (object_is_ancestor(_obj, obj_weapon_melee)) {
		return "melee";
	} else if (object_is_ancestor(_obj, obj_weapon_ranged)) {
		return "ranged";
	} else {
		return "none";	
	}
}