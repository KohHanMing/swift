// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Swarm Behaviour
function melee_slime_aggro(){
	with (obj_melee_slime) {
		if (point_distance(x, y, PLAYER.x, PLAYER.y) <= ATTACK_RANGE) {
			sector_counter[point_direction(x, y, PLAYER.x, PLAYER.y) div 45]++;
		}
	}

	var dir = -1

	for (var i = 0; i < 24; i += 3) {
		if (sector_counter[i div 8] != 0) {
			dir = i * 45;
			break
		}
	}

	if (dir != -1) {
		goalx = PLAYER.x + cos(dir*pi/180) * ATTACK_RANGE / 2
		goaly = PLAYER.y - sin(dir*pi/180) * ATTACK_RANGE / 2
	} else {
		goalx = PLAYER.x
		goaly = PLAYER.y
	}

	// If path exists
	if (mp_grid_path(global.grid, path, x, y, goalx, goaly, 1)) {
		// Start pathing to the next node towards player
		phy_follow_path(id, SPEED_PX_PER_FRAME, path);
	}
}
