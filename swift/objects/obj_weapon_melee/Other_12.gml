/// @description Fire Weapon

// Inherit Event
event_inherited();

firing = true;
sprite_index = SPR_WEAPON_FIRE;
		
previous_projectile = spawn_player_melee_hitbox(WEAPON_PROJECTILE, PROJECTILE_OFFSET_FORWARD, PROJECTILE_OFFSET_SIDE, weapon_angle);
alarm[0] = ATTACK_COOLDOWN

play_sfx(SFX_WEAPON,false);