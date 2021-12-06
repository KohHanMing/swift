/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

move_wrap(true, true, sprite_width/2);

// if falling
if (alarm[FALLING_ALARM] > -1) {
	image_alpha *= 0.9
	image_xscale *= 0.9
	image_yscale *= 0.9
}

if (!flying) {
	// if not falling
	if (alarm[FALLING_ALARM] == -1) {
		// check collision with hole objects
		hole = collision_point(x, bbox_bottom, obj_hole, false, true);
		if (hole != noone) {
			res_x = phy_position_xprevious;
			res_y = phy_position_yprevious;
			phy_speed_x = 0;
			phy_speed_y = 0;
			phy_active = false;
			alarm[FALLING_ALARM] = 60; // fall duration 1 second
		}
	}
}

// Prevent rubberbanding due to overshooting target coordinates
if (variable_instance_exists(id, "goal_x")) {
	if (x <= goal_x + 5 && x >= goal_x - 5 && y <= goal_y + 5 && y >= goal_y - 5) {
		phy_speed_x = 0;
		phy_speed_y = 0;
	}
}
