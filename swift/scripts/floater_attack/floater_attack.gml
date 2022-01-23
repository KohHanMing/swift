// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function floater_attack(){
	ATTACK_HIT_BOX = obj_floater_projectile;
	ATTACK_COOLDOWN_SECONDS = 2;
	ATTACK_OFFSET_FORWARD = 10;
	ATTACK_OFFSET_SIDE = 0;
	ATTACK_SFX = sfx_enemy_ranged;
	
	spawn_enemy_projectile(ATTACK_HIT_BOX, ATTACK_OFFSET_FORWARD, ATTACK_OFFSET_SIDE, dir_to_player);
	play_sfx(ATTACK_SFX, false);
}
