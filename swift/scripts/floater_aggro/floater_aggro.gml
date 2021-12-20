// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function floater_aggro(){
	// If path exists
	if (mp_grid_path(global.grid, path, sprite_x, sprite_y, PLAYER.sprite_x, PLAYER.sprite_y, 1)) {
		// Start pathing to the next node towards player
		phy_follow_path(id, SPEED_PX_PER_FRAME, path);
	} else if (id.has_line_of_sight) {
		dist_to_hole = range_finder(sprite_x,sprite_y,dir_to_player,ATTACK_RANGE,obj_hole);
		if (dist_to_hole > SPEED_PX_PER_FRAME * room_speed / 4) {
			phy_set_vector(id, SPEED_PX_PER_FRAME, dir_to_player)
		}
	}
}
