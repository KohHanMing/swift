/// @description Override Rotate Weapon

// Inherit Weapon Step
event_inherited();

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

// Scale Powering Down to fit cooldown
if powering_down image_speed = (image_number/sprite_get_speed(sprite_index))/(ATTACK_COOLDOWN/room_speed);

// Use weapon angle to rotate the weapon to suit its type in the child object
image_angle = weapon_angle;
if (weapon_angle >= 90 && weapon_angle < 270) image_yscale = -1;
else image_yscale = 1;