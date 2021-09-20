/// @description Insert description here
// You can write your code in this editor

//creating player coord vars for more quicker access
var player_x = obj_player.x;
var player_y = obj_player.y;

//if item is in collection range
if (point_in_rectangle(player_x, player_y, x-COLLECTION_RANGE, y-COLLECTION_RANGE, 
x+COLLECTION_RANGE, y+COLLECTION_RANGE)) {
	
	//if not close enough to be collected
	if (!point_in_rectangle(player_x, player_y, x-DELETION_RANGE, y-DELETION_RANGE, 
	x+DELETION_RANGE, y+DELETION_RANGE)) {
		
		//Move towards player
		x = lerp(x, player_x, 0.3);
		y = lerp(y, player_y, 0.3);
		
	} else {
		//Collect item (meaning delete item obj)
		//NOTE: Children obj will product effect on player in destroy event
		instance_destroy(); 
	}
}