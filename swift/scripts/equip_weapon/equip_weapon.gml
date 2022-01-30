/// @function					equip_weapon(_weapon)
/// @param {Weapon} _weapon		The weapon to equip.
/// @description				Equips a _weapon.
function equip_weapon(_weapon){
	
	// Exit if _weapon is already equipped.
	if (_weapon == equipped_melee_weapon or _weapon == equipped_ranged_weapon) {
		return;
	}
	
	var _melee_weapons = unlocked_melee_weapons; // Get reference to melee weapons for brevity
	var _ranged_weapons = unlocked_ranged_weapons; // Get reference to ranged weapons for brevity
	var _weapon_info = -1; // Assume we cannot find the weapon info
	
	var size = ds_list_size(_melee_weapons); // Number of melee weapons
	
	// Loop through melee weapons to find reference to the ds_map containing _weapon
	for (var i = 0; i < size; i++) {
		if (_melee_weapons[|i][? "weapon"] == _weapon) {
			_weapon_info = _melee_weapons[|i]; // If found, write it to _weapon_info
		}
	}
	
	var size = ds_list_size(_ranged_weapons); // Number of ranged weapons
	
	// Loop through ranged weapons to find reference to the ds_map containing _weapon
	for (var i = 0; i < size; i++) {
		if (_ranged_weapons[|i][? "weapon"] == _weapon) {
			_weapon_info = _ranged_weapons[|i]; // If found, write it to _weapon_info
		}
	}
	
	if (_weapon_info == -1) { // If the weapon is not found
		show_debug_message("Weapon not found");
		return; // Weapon not found.
	}
	
	var _weapon_type = _weapon_info[? "weapon_type"]; // Get the weapon_type
	
	switch _weapon_type {
	
		case "melee":
		
			// Update Information
			obj_player.equipped_melee_weapon = _weapon;
			obj_player.equipped_melee_weapon_info = _weapon_info;
			
			// Replace the existing Weapon
			instance_destroy(equipped_melee_weapon_id);
			equipped_melee_weapon_id = instance_create_layer(-512,-512,"Instances",equipped_melee_weapon); // ID of Melee Weapon
			
			with(equipped_melee_weapon_id) {
				event_perform(ev_step,ev_step_begin); // Fully initialize the weapon
				instance_deactivate_object(id); // and deactivate it by default.
			}
			
			break;
		
		case "ranged":
		
			// Update Information
			obj_player.equipped_ranged_weapon = _weapon;
			obj_player.equipped_ranged_weapon_info = _weapon_info;
			
			// Replace the existing Weapon
			instance_destroy(equipped_ranged_weapon_id);
			equipped_ranged_weapon_id = instance_create_layer(-512,-512,"Instances",equipped_ranged_weapon); // ID of Ranged Weapon
			
			with(equipped_ranged_weapon_id) {
				event_perform(ev_step,ev_step_begin); // Fully initialize the weapon
				instance_deactivate_object(id); // and deactivate it by default.
			}
			
			break;
	
	}
	
}