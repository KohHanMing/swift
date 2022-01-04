/// @description Rotate Weapon

// Inherit Weapon Step
event_inherited();

// Use weapon angle to rotate the weapon to suit its type in the child object
image_angle = weapon_angle;
if (weapon_angle >= 90 && weapon_angle < 270) image_yscale = -1;
else image_yscale = 1;

// Recoil
if recoiling recoil_offset = lerp(recoil_offset, -8, 0.5);
else recoil_offset = lerp(recoil_offset, 0, 0.5);
x += recoil_offset*dcos(weapon_angle)
y -= recoil_offset*dsin(weapon_angle)

// Rotate Weapon, Adopt Sprites Accordingly
if object_index == obj_weapon_ranged and (not firing) {
	if (weapon_angle >= 45 && weapon_angle <= 135) {
		sprite_index = SPR_WEAPON_IDLE_BACK;
	} else if (weapon_angle >= 225 && weapon_angle <= 315) {
		sprite_index = SPR_WEAPON_IDLE_FRONT;
	} else sprite_index = SPR_WEAPON_IDLE_SIDE;
}