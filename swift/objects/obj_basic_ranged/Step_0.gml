/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

face_angle = point_direction(0, 0, phy_speed_x, phy_speed_y);

if (face_angle > 315 || face_angle <= 45) sprite_index = spr_ranged_move_right;
else if (face_angle > 45 && face_angle <= 135) sprite_index = spr_ranged_move_up;
else if (face_angle > 135 && face_angle <= 225) sprite_index = spr_ranged_move_left;
else sprite_index = spr_ranged_move_down;
