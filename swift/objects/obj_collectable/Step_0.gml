/// @description Movement and Animation

if (has_finished_spawning) {
	
	// Warning Flash
	if alarm[1] < WARNING_TIME {
		// Periodic Alpha Changing
		var image_alpha_factor = (current_time%200)/200
		image_alpha = image_alpha_factor;
	}
	
	if (is_time_up) {
		
		// Despawn Animation
		// Fade to 0
		var image_alpha_factor = alarm[2]/DESPAWN_DURATION;
		image_alpha = image_alpha_factor;
		
	} else if (is_collectable) {
		
		// Creating player coord vars for quicker access
		var player_x = obj_player.x;
		var player_y = obj_player.y;

		// Distance to Player
		var distance_to_player = point_distance(phy_position_x,phy_position_y,player_x,player_y)
		if distance_to_player <= COLLECTION_RANGE {
	
			// If not close enough to be collected
			if distance_to_player > DELETION_RANGE {

				// Move towards player
				// Move faster when closer
				distance_factor = max(0.3,0.25*(1-distance_to_player/COLLECTION_RANGE))
				phy_position_x = lerp(phy_position_x,player_x,distance_factor);
				phy_position_y = lerp(phy_position_y,player_y,distance_factor);
		
			} else {
				// Collect Item
				event_user(COLLECT_ITEM);
			} 
		}
	} else {
		phy_speed_x = 0;
		phy_speed_y = 0;
	}
	
} else {
	// Spawn Animation
	apply_vector(id, -VECTOR_SPEED / SPAWN_DURATION, VECTOR_DIRECTION);
	var image_scale_factor = 1 - (0.5*alarm[0])/SPAWN_DURATION;
	image_xscale = image_scale_factor;
	image_yscale = image_scale_factor;
}
