function equip_weapon(_weapon){
	
	// Exit if _weapon is already equipped.
	if (_weapon == obj_player.equipped_melee_weapon or _weapon == obj_player.equipped_ranged_weapon) {
		return;
	}
	
	var _melee_weapons = obj_player.unlocked_melee_weapons;
	var _ranged_weapons = obj_player.unlocked_ranged_weapons;
	
	var size = ds_list_size(_melee_weapons);
	var _weapon_info = -1;
	
	for (var i = 0; i < size; i++) {
		if (_melee_weapons[|i][? "weapon"] == _weapon) {
			_weapon_info = _melee_weapons[|i];
		}
	}
	
	var size = ds_list_size(_ranged_weapons);
	for (var i = 0; i < size; i++) {
		if (_ranged_weapons[|i][? "weapon"] == _weapon) {
			_weapon_info = _ranged_weapons[|i];
		}
	}
	
	if (_weapon_info == -1) {
		show_debug_message("Weapon not found");
		return; // Weapon not found.
	}
	
	var _weapon_type = _weapon_info[? "weapon_type"];
	
	switch _weapon_type {
	
		case "melee":
		
			// Update Information
			obj_player.equipped_melee_weapon = _weapon;
			obj_player.equipped_melee_weapon_info = _weapon_info;
			
			// Replace the existing Weapon
			instance_destroy(equipped_melee_weapon_id);
			equipped_melee_weapon_id = instance_create_layer(-512,-512,"Instances",equipped_melee_weapon); // ID of Melee Weapon
			
			with(equipped_melee_weapon_id) {
				event_perform(ev_step,ev_step_begin);
				instance_deactivate_object(id);
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
				event_perform(ev_step,ev_step_begin);
				instance_deactivate_object(id);
			}
			
			break;
	
	}
	
}