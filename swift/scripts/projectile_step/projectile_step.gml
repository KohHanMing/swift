function projectile_step(){
	
	// Inherit Manual Collision Check
	event_inherited();

	// Check in P_RANGE
	if (distance_to_point(spawnX, spawnY) >= P_RANGE) {
		instance_destroy();
	}

	// Manual Wall Collision Check
	// Allow projectile to partially clip into wall
	if collision_point(x,y+8,obj_wall,0,1) instance_destroy();
}