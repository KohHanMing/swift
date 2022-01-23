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
	floater_aggro();
}

alarm[MOVEMENT_ALARM] = BEHAVIOUR_UPDATE_SECONDS;
