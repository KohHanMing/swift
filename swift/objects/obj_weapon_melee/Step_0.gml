/// @description Insert description here
// You can write your code in this editor

//Inherit from parent
event_inherited()


if (weapon_angle < 30 or weapon_angle > 330) {
	image_angle = weapon_angle;
} else if ((weapon_angle < 180 and weapon_angle > 150) or 
(weapon_angle > 180 and weapon_angle < 210)) {
	image_angle = weapon_angle + 180;
}