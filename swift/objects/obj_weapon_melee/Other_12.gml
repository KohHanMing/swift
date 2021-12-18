/// @description Fire Weapon

// Inherit Event
event_inherited();

firing = true;
sprite_index = SPR_WEAPON_FIRE;
		
previous_projectile = spawn_player_melee_hitbox(WEAPON_PROJECTILE, PROJECTILE_OFFSET_FORWARD, PROJECTILE_OFFSET_SIDE, weapon_angle);
alarm[0] = ATTACK_COOLDOWN

audio_play_sound(SFX_WEAPON,99,false);