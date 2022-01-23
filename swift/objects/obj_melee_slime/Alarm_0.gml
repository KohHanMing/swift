/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (dist_to_player <= ATTACK_RANGE && !can_attack) {
	enemy_aggro(id);
}
