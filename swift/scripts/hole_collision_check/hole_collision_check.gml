// Checks for hole collision.
// Additionally returns true if hole collision occurs
// and false if it does not.

function hole_collision_check(){
	hole = collision_point(x, y, obj_hole, false, true);
	if (hole != noone) {
		res_x = phy_position_xprevious;
		res_y = phy_position_yprevious;
		phy_speed_x = 0;
		phy_speed_y = 0;
		phy_active = false;
		falling_time = FALL_TIME;
		falling_factor = 0; // Initialize falling_factor
		return true;
	} else return false;
}