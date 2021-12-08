// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function basic_melee_attack(){
	dist = dist_to_player < ATTACK_RANGE ? dist_to_player : ATTACK_RANGE;
	spawn_enemy_melee_hitbox(ATTACK_HIT_BOX, dist, dir_to_player);
}
