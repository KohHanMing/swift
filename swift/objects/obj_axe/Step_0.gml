/// @description Override Rotation

// Inherit the parent event
event_inherited();

if dcos(weapon_angle) > 0 image_xscale = 1;
else image_xscale = -1;
