/// @description Movement

if (not can_move) {
	alarm[MOVEMENT_ALARM] = BEHAVIOUR_UPDATE_SECONDS;
	exit;
}
