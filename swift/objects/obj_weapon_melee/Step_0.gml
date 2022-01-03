/// @description Rotate Weapon

// Inherit Weapon Step
event_inherited();

// Use weapon angle to rotate the weapon to suit its type in the child object
// Quadratic Curve

// weapon_angle = 0, 360 -> image_angle = -45
// weapon_angle = 180 -> image_angle = 45

pointing_angle = -0.5 * abs(weapon_angle - 180) + 45;

if instance_exists(previous_projectile) > 0 attack_rotation_offset = lerp(attack_rotation_offset, -45, 0.5);
else attack_rotation_offset = lerp(attack_rotation_offset, 0, 0.5);

image_angle = pointing_angle + ROTATION_OFFSET - sign(pointing_angle) * attack_rotation_offset;

if pointing_angle < 0 image_xscale = 1;
else {
	image_xscale = -1;
	image_angle -= 2 * ROTATION_OFFSET;
}


if (not firing) {
	sprite_index = SPR_WEAPON_IDLE;
}
