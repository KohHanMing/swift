// Checks for hole collision.
// Additionally returns true if hole collision occurs
// and false if it does not.

function hole_collision_check(){
	
	hole = collision_point(x, y, obj_hole, false, true); // Check if entity is in hole
	
	if (hole != noone) { // If hole is found
		hole_collision_time += 1; // Increase hole_collision_time by 1
		
		// Start falling if hole_collision_time exceeds FALL_IMMUNITY_TIME
		if hole_collision_time > FALL_IMMUNITY_TIME {
			phy_speed_x = 0;
			phy_speed_y = 0;
			phy_active = false;
			falling_time = FALL_TIME;
			falling_factor = 0; // Initialize falling_factor
		}
		return true;
	} else {
		hole_collision_time = 0; // Reset hole_collision_time
		return false;
	}
}