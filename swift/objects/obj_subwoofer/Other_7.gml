if (sprite_index == SPR_WEAPON_FIRE) {
	attack_animation_loop += 1;
	if (attack_animation_loop >= 3) { // Loop 3 times before ending animation
		sprite_index = SPR_WEAPON_IDLE; // Reset to idle sprite
		attack_animation_loop = 0; // Reset animation loop counter
	}
}