/// @description Fire Weapon

// Inherit Event
event_inherited();

obj_player.CURR_ENERGY -= ENERGY_COST
firing = true;
	
if (sprite_index == SPR_WEAPON_IDLE_SIDE) sprite_index = SPR_WEAPON_FIRE_SIDE;
else if (sprite_index == SPR_WEAPON_IDLE_FRONT) sprite_index = SPR_WEAPON_FIRE_FRONT;
else sprite_index = SPR_WEAPON_FIRE_BACK;
	
spawn_player_projectile(WEAPON_PROJECTILE, PROJECTILE_OFFSET_FORWARD, PROJECTILE_OFFSET_SIDE, weapon_angle);
	
alarm[0] = ATTACK_COOLDOWN // Attacks 1 time per second
	
audio_play_sound(SFX_WEAPON, 99, false);
