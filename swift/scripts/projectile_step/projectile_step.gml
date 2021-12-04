function projectile_step(){
	// Inherit Manual Collision Check
	event_inherited();

	// Check in P_RANGE
	if (distance_to_point(spawnX, spawnY) >= P_RANGE) {
		instance_destroy();
	}

	// Manual Wall Collision Check
	if collision_point(x,y+16,obj_wall,0,1) instance_destroy();
}