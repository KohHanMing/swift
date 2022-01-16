function disable_alarms() {
	// Disable Alarms
	for(var i=0;i<12;i++) {
		if alarm[i] != -1 alarm[i] += 1
	}	
}

function disable_movement() {
	if phy_active {
		phy_position_x = phy_position_xprevious;
		phy_position_y = phy_position_yprevious;
	}
	
	x = xprevious;
	y = yprevious;
	
}

function disable_animation() {
	stored_speed = image_speed;
	image_speed = 0;
}

function enable_animation() {
	image_speed = stored_speed;
}