/// @description Swap Weapon Key

// Toggle equipped_weapon

if swap_timer > 0 exit; // Exit if swap_timer is active.

swap_timer = SWAP_COOLDOWN;

if equipped_weapon == "melee" equipped_weapon = "ranged";
else equipped_weapon = "melee"

update_equipped_weapons();