/// @description Fire Weapon
// Event is called when weapon is successfully fired.

if swap_timer < SWAP_COOLDOWN - INSTANT_SWAP_MIN and swap_timer > SWAP_COOLDOWN - INSTANT_SWAP_MIN - INSTANT_SWAP_RANGE {
	swap_timer = 0;
	//play_sfx(sfx_swap_success, false);
}

action = "attack";
image_index = 0;