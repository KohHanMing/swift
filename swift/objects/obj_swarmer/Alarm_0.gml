/// @description Update Behaviour
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (dist_to_player <= ATTACK_RANGE && !canAttack) {
	// End wandering and reset wander timer
	if (wandering) {
		wandering = false;
		alarm[WANDER_ALARM] = DISABLE_ALARM;
	}
	var dir = sector_number * 45;
	if (dir - 45 < dir_to_player && dir + 45 > dir_to_player) {
		enemy_aggro(id);
	}
}
