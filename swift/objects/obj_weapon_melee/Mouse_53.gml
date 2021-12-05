/// @description Attempt to Attack

if (firing) {
	// Cooldown not ready
	
}

else if (obj_player.CURR_ENERGY < ENERGY_COST) {
	// Not enough energy
	
}

else {
	// Otherwise, attack
	
		firing = true;
	sprite_index = SPR_WEAPON_FIRE;
		
	spawn_player_melee_hitbox(WEAPON_PROJECTILE, PROJECTILE_OFFSET_FORWARD, PROJECTILE_OFFSET_SIDE, weapon_angle);
	alarm[0] = RATE_OF_ATTACK

	audio_play_sound(SFX_WEAPON,99,false);
}