// Update Equipped Weapons event
// For future use when implementing new weapons
function update_equipped_weapons(){
	switch(equipped_melee_weapon) {
		case obj_weapon_melee:
			obj_player.equipped_melee_weapon_display = spr_weapon_melee_idle;
			break;
		case obj_blade:
			obj_player.equipped_melee_weapon_display = spr_blade_idle;
			break;
		case obj_axe:
			obj_player.equipped_melee_weapon_display = spr_axe_idle;
			break;
		case obj_subwoofer:
			obj_player.equipped_melee_weapon_display = spr_subwoofer_idle;
			break;
	}
	
	switch(equipped_ranged_weapon) {
		case obj_weapon_ranged:
			obj_player.equipped_ranged_weapon_display = spr_weapon_ranged_idle_side;
			break;
		case obj_honey_badger:
			obj_player.equipped_ranged_weapon_display = spr_honey_badger_idle_side;
			break;
		case obj_deadeye:
			obj_player.equipped_ranged_weapon_display = spr_deadeye_idle_side;
			break;
		case obj_honey_pot:
			obj_player.equipped_ranged_weapon_display = spr_honey_pot_idle_side;
			break;
	}
	
	if equipped_melee_weapon != melee_weapon_id.object_index {
		instance_destroy(melee_weapon_id);
		melee_weapon_id = instance_create_layer(-512,-512,"Instances",equipped_melee_weapon); // ID of Melee Weapon
		with(melee_weapon_id) event_perform(ev_step,ev_step_begin);
	}
	
	if equipped_ranged_weapon != ranged_weapon_id.object_index {
		instance_destroy(ranged_weapon_id);
		ranged_weapon_id = instance_create_layer(-512,-512,"Instances",equipped_ranged_weapon); // ID of Ranged Weapon
		with(ranged_weapon_id) event_perform(ev_step,ev_step_begin);
	}
	
	switch(equipped_weapon) {
		case "melee":
			instance_deactivate_object(ranged_weapon_id);
			instance_activate_object(melee_weapon_id);
			if current_weapon_id != melee_weapon_id with(melee_weapon_id) event_user(WEAPON_SWAPPED_IN); // Swap Weapon In Event
			current_weapon_id = melee_weapon_id; // Update Current Weapon ID
			break;
		case "ranged":
			instance_deactivate_object(melee_weapon_id);
			instance_activate_object(ranged_weapon_id);
			if current_weapon_id != ranged_weapon_id with(ranged_weapon_id) event_user(WEAPON_SWAPPED_IN); // Swap Weapon In Event
			current_weapon_id = ranged_weapon_id; // Update Current Weapon ID
			break;
	}
	
}