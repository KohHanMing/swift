function player_normal() {

	moving = false;
	phy_linear_damping = 10;

	if (global.key_move_up_down or global.key_move_left_down or global.key_move_down_down or global.key_move_right_down) {
		
		// Decide on goal direction based on keyboard inputs
		var goal_direction_x = 0;
		var goal_direction_y = 0;
		goal_direction = 0;
	
		if global.key_move_up_down goal_direction_y += 1;
		if global.key_move_left_down goal_direction_x -= 1;
		if global.key_move_down_down goal_direction_y -= 1;
		if global.key_move_right_down goal_direction_x += 1;
	
		if (goal_direction_y != 0 || goal_direction_x != 0) {
			moving = true;
			goal_direction = radtodeg(arctan2(goal_direction_y,goal_direction_x));
		}
	
		if (moving) {
			apply_vector(id, ACCELERATION_PX_PER_FRAME, goal_direction);
		}
	
		if (global.key_dash_pressed and !dashing) {
			if (CURR_DASH >= DASH_UNIT) {
				dashing = true;
				alarm[0] = DASH_TIME;
				CURR_DASH -= DASH_UNIT;
				play_sfx(sfx_player_dash, false);
			} else {
				play_sfx(sfx_noenergy, false);
			}
		}
		
		if(dashing) {
			// Dashing temporarily increases acceleration
			apply_vector(id, DASH_ACCELERATION_INCREASE, goal_direction);
			//Particles
			
			var center = find_sprite_center(id)
			
			repeat(2) instance_create_layer(center[0]+random_range(-10,10),center[1]+random_range(-10,10),"Instances",obj_particle_dash);
			
		}
		
		// Dashing temporarily removes max speed
		if (phy_speed > MAX_SPEED_PX_PER_FRAME) {	
			if(!dashing) {
				phy_speed_x = MAX_SPEED_PX_PER_FRAME*cos(direction*pi/180);
				phy_speed_y = -MAX_SPEED_PX_PER_FRAME*sin(direction*pi/180);
			} else if (alarm[0] <= DASH_TIME/2) {
				apply_vector(id, -ACCELERATION_PX_PER_FRAME, goal_direction);				
			}
		}
	}
	
	if (!dashing and falling_time == 0) {
		// If not dashing, i.e. enable dashing over holes
		// Check collision with hole objects
		hole_collision_check()
	}
	
	// Grid-Center-Aligned Respawn Position
	var aligned_x = x - x % 32 + 16;
	var aligned_y = y - y % 32 + 16;
		
	// Attempt to update respawn position.
	if !collision_point(aligned_x, aligned_y, obj_hole, false, false) {
		respawn_x = aligned_x;
		respawn_y = aligned_y;
	} 
	
}