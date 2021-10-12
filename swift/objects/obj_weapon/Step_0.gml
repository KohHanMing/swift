/// @description Insert description here
// You can write your code in this editor

//align to player
x = obj_player.x + X_OFFSET_FROM_PLAYER_CENTRE;
y = obj_player.y + Y_OFFSET_FROM_PLAYER_CENTRE;
depth = -(obj_player.y+1); //always infront of player
speed = obj_player.speed;
direction = obj_player.direction;

//rotate image with reference to mouse
weapon_angle = point_direction(x, y, mouse_x, mouse_y);

if (not firing) {
	if (weapon_angle > 90 and weapon_angle < 270 
	and sprite_index != SPR_WEAPON_LEFT_IDLE) {
		sprite_index = SPR_WEAPON_LEFT_IDLE;
	} else if (weapon_angle <= 90 or weapon_angle >= 270 
	and sprite_index != SPR_WEAPON_RIGHT_IDLE) {
		sprite_index = SPR_WEAPON_RIGHT_IDLE;
	}
} 

//Use weapon angle to rotate the weapon to suit its type in the child object




