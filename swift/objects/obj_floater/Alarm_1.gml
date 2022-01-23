/// @description Attacking
// You can write your code in this editor

// Inherit the parent event
event_inherited();

switch (attack_state) {
	case ATTACK_CAN_ATTACK:
		if (dist_to_player >= ATTACK_RANGE or not has_line_of_sight) {
			alarm[ATTACK_ALARM] = BEHAVIOUR_UPDATE_SECONDS;
			exit;
		}
		
		floater_attack();
		
		// Reset attack_state
		alarm[ATTACK_ALARM] = room_speed * ATTACK_COOLDOWN_SECONDS;
		attack_state = ATTACK_ON_COOLDOWN;
	break;
	
	case ATTACK_ON_COOLDOWN:
		// Reset attack_state
		attack_state = ATTACK_CAN_ATTACK;
		alarm[ATTACK_ALARM] = BEHAVIOUR_UPDATE_SECONDS;
	break;
}
