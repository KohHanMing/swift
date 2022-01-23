/// @description Attacking

if (not can_attack) {
	alarm[ATTACK_ALARM] = BEHAVIOUR_UPDATE_SECONDS;
	exit;
}
