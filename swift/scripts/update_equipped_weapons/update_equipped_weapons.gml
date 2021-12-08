// Update Equipped Weapons event
// For future use when implementing new weapons
function update_equipped_weapons(){
	switch(equipped_melee_weapon) {
		case obj_blade:
			obj_game.equipped_melee_weapon_display = spr_blade_idle;
			break;
	}
	
	switch(equipped_ranged_weapon) {
		case obj_honey_badger:
			obj_game.equipped_ranged_weapon_display = spr_honey_badger_idle_side;
	}
	
}