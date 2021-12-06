/// @description Override Rotate Weapon

// Inherit Weapon Step
// Bypass obj_weapon_ranged to avoid sprite overrides
event_perform_object(obj_weapon,ev_step,ev_step_normal);

// Rotate Weapon, Adopt Sprites Accordingly
if (weapon_angle >= 45 && weapon_angle <= 135) {
	if not firing sprite_index = SPR_WEAPON_IDLE_BACK;
	else if powering_down sprite_index = spr_honey_badger_power_down_back
} else if (weapon_angle >= 225 && weapon_angle <= 315) {
	if not firing sprite_index = SPR_WEAPON_IDLE_FRONT;
	else if powering_down sprite_index = spr_honey_badger_power_down_front;
} else {
	if not firing sprite_index = SPR_WEAPON_IDLE_SIDE;
	else if powering_down sprite_index = spr_honey_badger_power_down_side;
}

/*	Scale Powering Down speed to fit cooldown and animation playback speed.
	image_speed is factor to modify playback time.
	Numerator: Number of seconds for animation to be played.
	Denominator: Number of seconds for cooldown to end. */
	
if powering_down image_speed = (image_number/sprite_get_speed(sprite_index))/(ATTACK_COOLDOWN/room_speed);
else image_speed = 1; // If not powering down, reset image_speed to 1

// Use weapon angle to rotate the weapon accordingly
image_angle = weapon_angle;

// Flip Sprite Accordingly
if (weapon_angle >= 90 && weapon_angle < 270) image_yscale = -1;
else image_yscale = 1;