function change_weapon(_weapon){
	
	var quickswap = false;
	
	if (_weapon != obj_player.equipped_melee_weapon and _weapon != obj_player.equipped_ranged_weapon) {
		equip_weapon(_weapon); // Equip _weapon if it is not equipped.
	} else if (obj_player.current_weapon == _weapon) {
		show_debug_message("Weapon already equipped");
		return; // If the _weapon is already the current weapon, exit.
	} else {
		quickswap = true;
	}
	
	var _weapon_type = weapon_type(_weapon);
	show_debug_message(_weapon_type);
	current_weapon_type = _weapon_type;
	current_weapon = _weapon;
	swap_timer = SWAP_COOLDOWN;
	
	switch(_weapon_type) {
		
		case "melee":
		
			instance_deactivate_object(equipped_ranged_weapon_id);
			instance_activate_object(equipped_melee_weapon_id);
			with(equipped_melee_weapon_id) event_user(WEAPON_SWAPPED_IN); // Swap Weapon In Event
			current_weapon_id = equipped_melee_weapon_id; // Update Current Weapon ID
			
			break;
			
		case "ranged":
		
			instance_deactivate_object(equipped_melee_weapon_id);
			instance_activate_object(equipped_ranged_weapon_id);
			with(equipped_ranged_weapon_id) event_user(WEAPON_SWAPPED_IN); // Swap Weapon In Event
			current_weapon_id = equipped_ranged_weapon_id; // Update Current Weapon ID
			
			break;
	}
	
	if (quickswap) {
		with (current_weapon_id) {
			event_user(WEAPON_QUICKSWAPPED_IN);
		}
	}
	
}