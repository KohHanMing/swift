/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (dist_to_player <= ATTACK_RANGE && !canAttack) {
	// End wandering and reset wander timer
	if (wandering) {
		wandering = false;
		alarm[WANDER_ALARM] = DISABLE_ALARM;
	}
	enemy_aggro(id);
}
