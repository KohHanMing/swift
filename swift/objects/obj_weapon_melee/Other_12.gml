/// @description Fire Weapon

// Inherit Event
event_inherited();

firing = true;
sprite_index = SPR_WEAPON_FIRE;
		
previous_projectile = spawn_player_projectile(WEAPON_PROJECTILE, WEAPON_OFFSET_FORWARD + PROJECTILE_OFFSET_FORWARD, WEAPON_OFFSET_SIDE + PROJECTILE_OFFSET_SIDE, weapon_angle);

play_sfx(SFX_WEAPON,false);