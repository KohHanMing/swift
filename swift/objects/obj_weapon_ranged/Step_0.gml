/// @description Rotate Weapon

// Inherit Weapon Step
event_inherited();

// Use weapon angle to rotate the weapon to suit its type in the child object
image_angle = weapon_angle;
if (weapon_angle >= 90 && weapon_angle < 270) image_yscale = -1;
else image_yscale = 1;
