/// @description Insert description here
// You can write your code in this editor
if (movement_direction == MOVEMENT_DIR_RIGHT) {
	x = x + DASH_SPEED_PER_PX;	 
} else if (movement_direction == MOVEMENT_DIR_LEFT) {
	x = x - DASH_SPEED_PER_PX;
} else if (movement_direction == MOVEMENT_DIR_UP) {
	y = y - DASH_SPEED_PER_PX;
} else if (movement_direction == MOVEMENT_DIR_DOWN) {
	y = y + DASH_SPEED_PER_PX;
}
