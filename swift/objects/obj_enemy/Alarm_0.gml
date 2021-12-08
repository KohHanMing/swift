 /// @description Update Behaviour

// If not falling
if (alarm[FALLING_ALARM] == -1) {
	
	// Check path last to save path computation
	// Retreat, Attack, Aggro and Wander are to be abstracted to scripts eventually

	dist_to_player = point_distance(sprite_x, sprite_y, PLAYER.sprite_x, PLAYER.sprite_y);
	dir_to_player = point_direction(sprite_x, sprite_y, PLAYER.sprite_x, PLAYER.sprite_y);
	phy_speed_x = 0;
	phy_speed_y = 0;

	dist_to_wall = range_finder(sprite_x,sprite_y,dir_to_player,ATTACK_RANGE,obj_wall);
	has_line_of_sight = dist_to_wall == -1 || (dist_to_wall > 0 && dist_to_player < dist_to_wall);

	// If player is too close, i.e. within Retreat Range
	if (dist_to_player <= RETREAT_RANGE && has_line_of_sight) {
		// Retreat
		// Simple straight retreat, location seeking retreat to be implemented. 
		var retreatDir = (dir_to_player + 180) % 360;
		phy_set_vector(id, SPEED_PX_PER_FRAME, retreatDir);
	
	// else if within Attack Range
	} else if (dist_to_player <= ATTACK_RANGE) {
		if (canAttack) {
			if (has_line_of_sight) {
				canAttack = false;
				// Do attack
				enemy_attack(id);

			} else { // no line of sight
				enemy_aggro(id); // attempt to move to gain line of sight
			}
		}

	// else if within Aggro Range
	} else if (dist_to_player <= AGGRO_RANGE) {
		// End wandering and reset wander timer
		if (wandering) {
			wandering = false;
			alarm[WANDER_ALARM] = DISABLE_ALARM;
		}
	
		enemy_aggro(id);

	} else { // Neither within Attack nor Aggro Range
		// Wander/idle
		// if not already wandering
		if (not wandering) {
			node_index = 1; // Reset the node index
		
			// Find a random spot
			goal_x = wander_anchor_x + random_range(-WANDER_RADIUS, WANDER_RADIUS);
			goal_y = wander_anchor_y + random_range(-WANDER_RADIUS, WANDER_RADIUS);
		
			// And try to path towards it
			if (mp_grid_path(global.grid, path, sprite_x, sprite_y, goal_x, goal_y, 1)) {
				wandering = true;
				phy_follow_path(id, SPEED_PX_PER_FRAME, path);
				node_index++;
				alarm[WANDER_ALARM] = room_speed * WANDER_COOLDOWN_SECONDS;
			}
		// else, a wander path has already been generated
		} else if (path_get_point_x(path, node_index) != 0) { // Check if nodes in the path still exist
			// Move to the next node on the same path
			phy_follow_path(id, SPEED_PX_PER_FRAME, path, node_index);
			node_index++;
		}
	}

}

alarm[BEHAVIOUR_ALARM] = room_speed / 4; // Update behaviour every quarter second.
