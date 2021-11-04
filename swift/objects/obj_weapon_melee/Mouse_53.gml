/// @description Insert description here
// You can write your code in this editor
if (not firing) {
	firing = true;
	if (sprite_index == SPR_WEAPON_IDLE_SIDE) {
		sprite_index = SPR_WEAPON_FIRE_SIDE;
	} else {
		sprite_index = SPR_WEAPON_FIRE_FRONT;
	}
		
	spawn_melee_projectile(WEAPON_PROJECTILE, PROJECTILE_OFFSET_FORWARD, PROJECTILE_OFFSET_SIDE, weapon_angle);
	alarm[0] = RATE_OF_ATTACK //Attacks 1 time per second

	audio_play_sound(SFX_WEAPON,99,false);

}