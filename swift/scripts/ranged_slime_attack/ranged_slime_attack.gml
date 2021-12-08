// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ranged_slime_attack(){
	spawn_enemy_projectile(ATTACK_HIT_BOX, ATTACK_OFFSET_FORWARD, ATTACK_OFFSET_SIDE, dir_to_player);
}
