/// @description Fire Weapon

// Inherit Event
event_inherited();

obj_player.CURR_ENERGY -= ENERGY_COST
firing = true;
recoiling = true;
alarm[0] = room_speed / 4;
	
spawn_player_projectile(WEAPON_PROJECTILE, WEAPON_OFFSET_FORWARD + PROJECTILE_OFFSET_FORWARD, WEAPON_OFFSET_SIDE + PROJECTILE_OFFSET_SIDE, weapon_angle);
	
play_sfx(SFX_WEAPON_FIRE, false);
