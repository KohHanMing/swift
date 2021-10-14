/// @description Insert description here
// You can write your code in this editor
if (not firing and obj_player.CURR_ENERGY >= ENERGY_COST) {
	obj_player.CURR_ENERGY -= ENERGY_COST
	firing = true;
	if (sprite_index == SPR_WEAPON_RIGHT_IDLE) {
		sprite_index = SPR_WEAPON_RIGHT_FIRE;
	} else {
		sprite_index = SPR_WEAPON_LEFT_FIRE;
	}
	
	spawn_projectile(WEAPON_PROJECTILE, PROJECTILE_OFFSET_FORWARD, PROJECTILE_OFFSET_SIDE, weapon_angle);
	
	alarm[0] = RATE_OF_ATTACK //Attacks 1 time per second
	
	audio_play_sound(SFX_WEAPON, 99, false);
}