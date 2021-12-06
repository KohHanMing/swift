/// @description Insert description here
// You can write your code in this editor

//align to player
x = obj_player.x + X_OFFSET_FROM_PLAYER_CENTRE;
y = obj_player.y + Y_OFFSET_FROM_PLAYER_CENTRE;
speed = obj_player.speed;
direction = obj_player.direction;

// Rotate image with reference to mouse
weapon_angle = point_direction(x, y, mouse_x, mouse_y);

if (not firing) {
	if (weapon_angle >= 45 && weapon_angle <= 135) || (weapon_angle >= 225 && weapon_angle <= 315) {
		sprite_index = SPR_WEAPON_IDLE_FRONT;
	} else sprite_index = SPR_WEAPON_IDLE_SIDE;
}