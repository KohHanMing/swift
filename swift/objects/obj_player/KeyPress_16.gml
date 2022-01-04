/// @description Swap Weapon Key

// Toggle equipped_weapon

// Swap Fail Conditions
// Swap Timer not ready
// Control Disabled

if (swap_timer > 0 or !control_enabled) {
	
	audio_play_sound(sfx_swap_fail,99,false);
	exit; // Exit Event if Swap Fail
}

swap_timer = SWAP_COOLDOWN;

if equipped_weapon == "melee" equipped_weapon = "ranged";
else equipped_weapon = "melee"

update_equipped_weapons();