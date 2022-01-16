/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (dist_to_player <= RETREAT_RANGE && canAttack) {
	if (has_line_of_sight) {
		canAttack = false;
		// Do attack
		enemy_attack(id);
		play_sfx(ATTACK_SFX, false);
		// Reset canAttack
		alarm[ATTACK_ALARM] = room_speed * ATTACK_COOLDOWN_SECONDS;
	}
}
