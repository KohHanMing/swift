// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function basic_ranged_aggro(){
	// If path exists
	if (mp_grid_path(global.grid, path, x, y, PLAYER.x, PLAYER.y, 1)) {
		// Start pathing to the next node towards player
		phy_follow_path(object_index, SPEED_PX_PER_FRAME, path);
	}
}
