///// @description Check in P_RANGE

//Inherit Manual Collision Check
event_inherited();

if (distance_to_point(spawnX, spawnY) >= P_RANGE) {
	instance_destroy();
}