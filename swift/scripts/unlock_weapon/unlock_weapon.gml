/// @function					unlock_weapon(_weapon)
/// @param {Weapon} _weapon		The weapon to unlock
/// @description				Put a new weapon into the player's unlocked weapons.
function unlock_weapon(_weapon){
	
	// Assume _weapon is not a valid weapon by default
	var _list = -1;

	// Get the weapon type
	var _weapon_type = weapon_type(_weapon);
	
	// Get reference to the correct ds_list based on the weapon_type
	switch (_weapon_type) {
		case "melee":
			_list = unlocked_melee_weapons;
			break;
		case "ranged":
			_list = unlocked_ranged_weapons;
			break;
	}
	
	if (_list == -1) { // Exit if _weapon is not a valid weapon
		return;
	}

	// If weapon has been found, create a dummy version to extract data
	var dummy_weapon = instance_create_layer(-512, -512, "Instances", _weapon);
	
	var _map = ds_map_create(); // Create a ds_map that represents this weapon
	ds_map_add(_map, "weapon", _weapon); // Weapon internal name
	ds_map_add(_map, "weapon_type", _weapon_type); // "melee" or "ranged"
	ds_map_add(_map, "weapon_name", dummy_weapon.WEAPON_NAME); // Weapon displayed name
	ds_map_add(_map, "weapon_display", dummy_weapon.SPR_WEAPON_DISPLAY); // Weapon display sprite
	
	instance_destroy(dummy_weapon); // Remove the dummy weapon.
	
	ds_list_add(_list, _map); // Append the new ds_map to the correct ds_list.
	
}