/// @description Rotate Weapon

// Inherit Weapon Step
event_inherited();

// Rotate Weapon, Adopt Sprites Accordingly
if (not firing) {
	if (weapon_angle >= 45 && weapon_angle <= 135) {
		sprite_index = SPR_WEAPON_IDLE_BACK;
	} else if (weapon_angle >= 225 && weapon_angle <= 315) {
		sprite_index = SPR_WEAPON_IDLE_FRONT;
	} else sprite_index = SPR_WEAPON_IDLE_SIDE;
}

// Use weapon angle to rotate the weapon to suit its type in the child object
image_angle = weapon_angle;
if (weapon_angle >= 90 && weapon_angle < 270) image_yscale = -1;
else image_yscale = 1;