// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function floater_aggro(){
	// If path exists
	if (mp_grid_path(global.grid_air, path, sprite_x, sprite_y, PLAYER.sprite_x, PLAYER.sprite_y, 1)) {
		// Start pathing to the next node towards player
		phy_follow_path(id, SPEED_PX_PER_FRAME, path);
	}
}
