/// @description Swap Weapon Key

// Toggle equipped_weapon

// Swap Fail Conditions
// Swap Timer not ready
// Control Disabled

if (swap_timer > 0 or !control_enabled) {
	
	swap_failed();
	exit; // Exit Event if Swap Fail
	
}

swap_timer = SWAP_COOLDOWN;

if equipped_weapon == "melee" equipped_weapon = "ranged";
else equipped_weapon = "melee"

update_equipped_weapons();

with(current_weapon_id) event_user(WEAPON_QUICKSWAPPED_IN);
