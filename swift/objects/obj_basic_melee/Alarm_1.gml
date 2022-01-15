/// @description Attack related
// You can write your code in this editor
switch (attack_state) {
	case ATTACK_WINDING_UP:
		spawn_enemy_melee_hitbox(ATTACK_HIT_BOX, attack_distance, attack_direction);
		play_sfx(ATTACK_SFX, false);
		
		attack_state = ATTACK_FOLLOW_THROUGH;
		// Set follow through timer
		alarm[ATTACK_ALARM] = room_speed * ATTACK_FOLLOW_THROUGH_SECONDS;
		
	case ATTACK_FOLLOW_THROUGH:
		attack_state = ATTACK_ON_COOLDOWN;
		// Set cooldown timer
		alarm[ATTACK_ALARM] = room_speed * ATTACK_COOLDOWN_SECONDS;
		
	case ATTACK_ON_COOLDOWN:
		// Reset canAttack
		canAttack = true;
		attack_state = ATTACK_CAN_ATTACK;
		
	default:
				
}
