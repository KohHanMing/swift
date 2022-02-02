// Inherit Weapon Step
event_inherited();

// Rotate Weapon

// Use weapon angle to rotate the weapon to suit its type in the child object

// weapon_angle = 0, 360 -> pointing_angle = -45
// weapon_angle = 90, 270 -> pointing_angle = 0
// weapon_angle = 180 -> pointing_angle = 45

pointing_angle = -0.5 * abs(weapon_angle - 180) + 45; // Pointing Angle is the angle that a straight weapon should point, where 0 is vertical.

if instance_exists(previous_projectile) {
	var _projectile_angle = previous_projectile.phy_rotation;
	if (_projectile_angle < 0 and _projectile_angle > -180) {
		attack_rotation_offset = lerp(attack_rotation_offset, -45, 0.5); // Slice Animation
	} else {
		attack_rotation_offset = lerp(attack_rotation_offset, -90, 0.5); // Slice Animation
	}
} else {
	attack_rotation_offset = lerp(attack_rotation_offset, 0, 0.5); // Return to Normal Position
}

if ROTATES image_angle = pointing_angle + ROTATION_OFFSET - sign(pointing_angle) * attack_rotation_offset; // Set Image Angle
else image_angle = ROTATION_OFFSET;

// Flip Weapon Accordingly
if pointing_angle < 0 image_xscale = 1;
else {
	image_xscale = -1;
	image_angle -= 2 * ROTATION_OFFSET;
}

// Idle Sprite
if (not firing) {
	sprite_index = SPR_WEAPON_IDLE;
}
