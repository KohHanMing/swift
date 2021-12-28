// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function swarmer_attack(){
	if (dir_to_player > 315 || dir_to_player <= 45) sprite_index = spr_swarmer_attack_right;
	else if (dir_to_player > 45 && dir_to_player <= 135) sprite_index = spr_swarmer_attack_up;
	else if (dir_to_player > 135 && dir_to_player <= 225) sprite_index = spr_swarmer_attack_left;
	else sprite_index = spr_swarmer_attack_down;
	
	attack_distance = dist_to_player < ATTACK_RANGE ? dist_to_player : ATTACK_RANGE;
	attack_direction = dir_to_player;
	attack_state = ATTACK_WINDING_UP;
	alarm[ATTACK_ALARM] = room_speed * ATTACK_WINDUP_SECONDS;
}
