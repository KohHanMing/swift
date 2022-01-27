// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function swarmer_attack(){
	ATTACK_HIT_BOX = obj_swarmer_hitbox;
	ATTACK_WINDUP_SECONDS = 0.833;
	ATTACK_FOLLOW_THROUGH_SECONDS = 0.167;
	ATTACK_COOLDOWN_SECONDS = 2;
	ATTACK_OFFSET_FORWARD = 0;
	ATTACK_OFFSET_SIDE = 0;
	ATTACK_SFX = sfx_enemy_melee;
	
	if (dir_to_player > 315 || dir_to_player <= 45) sprite_index = spr_swarmer_attack_right;
	else if (dir_to_player > 45 && dir_to_player <= 135) sprite_index = spr_swarmer_attack_up;
	else if (dir_to_player > 135 && dir_to_player <= 225) sprite_index = spr_swarmer_attack_left;
	else sprite_index = spr_swarmer_attack_down;
	
	attack_distance = dist_to_player < ATTACK_RANGE ? dist_to_player : ATTACK_RANGE;
	attack_direction = dir_to_player;
}
