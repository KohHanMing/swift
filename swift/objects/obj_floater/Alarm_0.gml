/// @description Movement
// You can write your code in this editor

// Inherit the parent event
event_inherited();
phy_speed_x = 0;
phy_speed_y = 0;

// If player is too close, i.e. within Retreat Range
if (dist_to_player <= RETREAT_RANGE && has_line_of_sight) {
	// Retreat
	// Simple straight retreat, location seeking retreat to be implemented. 
	var retreatDir = (dir_to_player + 180) % 360;
	phy_set_vector(id, SPEED_PX_PER_FRAME, retreatDir);

// else if within Aggro Range
} else if (dist_to_player <= AGGRO_RANGE) {
	enemy_aggro(id);

}

alarm[MOVEMENT_ALARM] = BEHAVIOUR_UPDATE_SECONDS;
if (dist_to_player <= RETREAT_RANGE && can_attack) {
	if (has_line_of_sight) {
		can_attack = false;
		// Do attack
		enemy_attack(id);
		play_sfx(ATTACK_SFX, false);
		// Reset can_attack
		alarm[ATTACK_ALARM] = room_speed * ATTACK_COOLDOWN_SECONDS;
	}
}
