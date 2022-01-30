function unlock_weapon(_weapon){
	
	// Init _list to -1
	var _list = -1;

	// Determine the weapon type
	var _weapon_type = weapon_type(_weapon);
	
	switch (_weapon_type) {
		case "melee":
			_list = obj_player.unlocked_melee_weapons;
			break;
		case "ranged":
			_list = obj_player.unlocked_ranged_weapons;
			break;
	}
	
	if (_list == -1) { // Exit if _weapon is not a valid weapon
		return;
	}

	var dummy_weapon = instance_create_layer(-512, -512, "Instances", _weapon);
	
	var _map = ds_map_create(); // Create a ds_map that represents this weapon
	ds_map_add(_map, "weapon", _weapon);
	ds_map_add(_map, "weapon_type", _weapon_type);
	ds_map_add(_map, "weapon_name", dummy_weapon.WEAPON_NAME);
	ds_map_add(_map, "weapon_display", dummy_weapon.SPR_WEAPON_DISPLAY);
	
	instance_destroy(dummy_weapon);
	
	ds_list_add(_list, _map);
	
}