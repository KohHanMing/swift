/// @description Update Behaviour

// Check path last to save path computation

var dist_to_player = point_distance(x, y, PLAYER.x, PLAYER.y);

if (not wandering) {
	path_end();
}

// If player is too close, i.e. within Retreat Range
if (dist_to_player <= RETREAT_RANGE) {
	// Retreat
	// to where? how to decide safe spot? straight backwards?
	
// else if within Attack Range
} else if (dist_to_player <= ATTACK_RANGE) {
	if (canAttack) {
		canAttack = false;
		attacking = true; 
		// Do attack
		
		// Reset canAttack
		alarm[ATTACK_ALARM] = room_speed * ATTACK_DELAY_SECONDS;
	} // else, enemy is within Attack Range but waiting for cooldown, don't path
	
// else if within Aggro Range
} else if (dist_to_player <= AGGRO_RANGE) {
	// End wandering and reset wander timer
	if (wandering) {
		path_end();
		wandering = false;
		alarm[WANDER_ALARM] = DISABLE_ALARM;
	}
	
	// If path exists
	if (mp_grid_path(global.grid, path, x, y, PLAYER.x, PLAYER.y, 1)) {
		// Start pathing to player
		path_start(path, SPEED_PX_PER_FRAME, path_action_stop, false);
	}
	
} else { // Neither within Attack nor Aggro Range
	// Wander/idle
	// if not already wandering
	if (not wandering) {
		goal_x = wander_anchor_x + random_range(-WANDER_RADIUS, WANDER_RADIUS);
		goal_y = wander_anchor_y + random_range(-WANDER_RADIUS, WANDER_RADIUS);
		if (mp_grid_path(global.grid, path, x, y, goal_x, goal_y, 1)) {
			wandering = true;
			path_start(path, SPEED_PX_PER_FRAME, path_action_stop, false);
			alarm[WANDER_ALARM] = room_speed * WANDER_COOLDOWN_SECONDS;
		}
	}
}

alarm[BEHAVIOUR_ALARM] = room_speed / 4; // Update behaviour every quarter second.
