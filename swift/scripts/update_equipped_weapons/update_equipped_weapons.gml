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
	}
	
	switch(equipped_ranged_weapon) {
		case obj_weapon_ranged:
			obj_player.equipped_ranged_weapon_display = spr_weapon_ranged_idle_side;
			break;
		case obj_honey_badger:
			obj_player.equipped_ranged_weapon_display = spr_honey_badger_idle_side;
			break;
	}
	
}