/// @description Insert description here
// You can write your code in this editor

//align to player
x = obj_player.x + X_OFFSET_FROM_PLAYER_CENTRE;
y = obj_player.y;
speed = obj_player.speed;
direction = obj_player.direction;

//rotate image with reference to mouse
weapon_angle = point_direction(x, y, mouse_x, mouse_y);

if (not firing) {
	if (weapon_angle > 90 and weapon_angle < 270 
	and sprite_index != spr_weapon_ranged_left_idle) {
		sprite_index = spr_weapon_ranged_left_idle;
	} else if (weapon_angle <= 90 or weapon_angle >= 270 
	and sprite_index != spr_weapon_ranged_right_idle) {
		sprite_index = spr_weapon_ranged_right_idle;
	}
} 

image_angle = weapon_angle;



