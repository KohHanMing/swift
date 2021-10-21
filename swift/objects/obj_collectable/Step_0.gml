/// @description Insert description here
// You can write your code in this editor

if (has_finished_spawning) {
	if (is_collectable) {
		//creating player coord vars for quicker access
		var player_x = obj_player.x;
		var player_y = obj_player.y;

		//if item is in collection range
		if (point_in_rectangle(player_x, player_y, phy_position_x-COLLECTION_RANGE, phy_position_y-COLLECTION_RANGE, 
		phy_position_x+COLLECTION_RANGE, phy_position_y+COLLECTION_RANGE)) {
	
			//if not close enough to be collected
			if (!point_in_rectangle(player_x, player_y, phy_position_x-DELETION_RANGE, phy_position_y-DELETION_RANGE, 
			phy_position_x+DELETION_RANGE, phy_position_y+DELETION_RANGE)) {
		
				//Move towards player
				phy_position_x = lerp(phy_position_x, player_x, 0.3);
				phy_position_y = lerp(phy_position_y, player_y, 0.3);
		
			} else {
				//Collect item (meaning delete item obj)
				//NOTE: Children obj will product effect on player in destroy event
				instance_destroy(); 
			} 
		}
	}
} else {
	apply_vector(id, -VECTOR_SPEED / SPAWN_DURATION, VECTOR_DIRECTION);
	
}
