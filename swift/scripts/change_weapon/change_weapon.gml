/// @function					change_weapon(_weapon)
/// @param {Weapon} _weapon		The weapon to change to
/// @description				Changes the current weapon to _weapon, equipping if not equipped.
function change_weapon(_weapon){
	
	var quickswap = false; // Assume that it is not a quickswap.
	
	if (_weapon != equipped_melee_weapon and _weapon != equipped_ranged_weapon) {
		equip_weapon(_weapon); // Equip _weapon if it is not equipped.
	} else if (current_weapon == _weapon) {
		return; // If the _weapon is already the current weapon, exit.
	} else {
		quickswap = true; // Otherwise, it must be a quickswap.
	}
	
	var _weapon_type = weapon_type(_weapon); // Get the weapon_type
	current_weapon_type = _weapon_type; // Update the player's current_weapon_type.
	current_weapon = _weapon; // Update the player's current weapon.
	swap_timer = SWAP_COOLDOWN; // Refresh the swap timer.
	
	switch(_weapon_type) {
		
		case "melee":
		
			instance_deactivate_object(equipped_ranged_weapon_id); // Decativate the equipped ranged weapon
			instance_activate_object(equipped_melee_weapon_id); // and activate the equipped melee weapon.
			with(equipped_melee_weapon_id) event_user(WEAPON_SWAPPED_IN); // Swap Weapon In Event
			current_weapon_id = equipped_melee_weapon_id; // Update Current Weapon ID
			
			break;
			
		case "ranged":
		
			instance_deactivate_object(equipped_melee_weapon_id); // Deactivate the equipped melee weapon
			instance_activate_object(equipped_ranged_weapon_id); // and activate the equipped ranged weapon.
			with(equipped_ranged_weapon_id) event_user(WEAPON_SWAPPED_IN); // Swap Weapon In Event
			current_weapon_id = equipped_ranged_weapon_id; // Update Current Weapon ID
			
			break;
	}
	
	if (quickswap) { // If this is a quickswap
		with (current_weapon_id) {
			event_user(WEAPON_QUICKSWAPPED_IN); // make the current weapon run the quickswap event.
		}
	}
	
}