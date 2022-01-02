/// @description Rotate Weapon

// Inherit Weapon Step
event_inherited();

// Use weapon angle to rotate the weapon to suit its type in the child object
// Quadratic Curve

// weapon_angle = 0, 360 -> image_angle = -45
// weapon_angle = 180 -> image_angle = 45
image_angle = 25/9000 * weapon_angle * (360 - weapon_angle) - 45 + ROTATION_OFFSET;

if image_angle - ROTATION_OFFSET < 0 image_xscale = 1;
else {
	image_xscale = -1;
	image_angle -= 2 * ROTATION_OFFSET;
}


if (not firing) {
	sprite_index = SPR_WEAPON_IDLE;
}
