// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Swarm Behaviour
function melee_slime_aggro(){
	var dir = sector_number * 45;

	if (dir != -1) {
		goal_x = PLAYER.sprite_x + cos(dir*pi/180) * (ATTACK_RANGE);
		goal_y = PLAYER.sprite_y - sin(dir*pi/180) * (ATTACK_RANGE);
		
		// If path exists
		if (mp_grid_path(global.grid, path, sprite_x, sprite_y, goal_x, goal_y, 1)) {
			// Start pathing to the next node towards player
			phy_follow_path(id, SPEED_PX_PER_FRAME, path);
		} else if (mp_grid_path(global.grid, path, sprite_x, sprite_y, PLAYER.sprite_x, PLAYER.sprite_y, 1)) {
			// Start pathing to the next node towards player
			phy_follow_path(id, SPEED_PX_PER_FRAME, path);
		}
	}
}
