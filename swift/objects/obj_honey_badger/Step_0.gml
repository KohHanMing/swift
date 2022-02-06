/// @description Override Rotate Weapon

// Inherit Weapon Ranged Step
event_inherited();

// Adopt Sprite Action Accordingly
if (not firing) {
	sprite_action = "idle";
} else if (powering_down) {
	sprite_action = "power_down";
}

sprite_index = asset_get_index("spr_" + WEAPON_ID + "_" + sprite_action + "_" + sprite_direction);

/*	Scale Powering Down speed to fit cooldown and animation playback speed.
	image_speed is factor to modify playback time.
	Numerator: Number of seconds for animation to be played.
	Denominator: Number of seconds for cooldown to end. */
	
if powering_down image_speed = (image_number/sprite_get_speed(sprite_index))/(ATTACK_COOLDOWN/room_speed);
else image_speed = 1; // If not powering down, reset image_speed to 1