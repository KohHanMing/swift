/// @description Attacking
// You can write your code in this editor

switch (attack_state) {
	case ATTACK_CAN_ATTACK:
		if (dist_to_player >= ATTACK_RANGE or not has_line_of_sight) {
			alarm[ATTACK_ALARM] = BEHAVIOUR_UPDATE_SECONDS;
			exit;
		}
		
		swarmer_attack();
		
		attack_state = ATTACK_WINDING_UP;
		alarm[ATTACK_ALARM] = room_speed * ATTACK_WINDUP_SECONDS;
	break;
	
	case ATTACK_WINDING_UP:
		spawn_enemy_melee_hitbox(ATTACK_HIT_BOX, attack_distance, attack_direction);
		play_sfx(ATTACK_SFX, false);
		
		attack_state = ATTACK_FOLLOW_THROUGH;
		// Set follow through timer
		alarm[ATTACK_ALARM] = room_speed * ATTACK_FOLLOW_THROUGH_SECONDS;
	break;
	
	case ATTACK_FOLLOW_THROUGH:
		attack_state = ATTACK_ON_COOLDOWN;
		// Set cooldown timer
		alarm[ATTACK_ALARM] = room_speed * ATTACK_COOLDOWN_SECONDS;
	break;
	
	case ATTACK_ON_COOLDOWN:
		// Reset can_attack
		attack_state = ATTACK_CAN_ATTACK;
		alarm[ATTACK_ALARM] = BEHAVIOUR_UPDATE_SECONDS;
	break;
}
