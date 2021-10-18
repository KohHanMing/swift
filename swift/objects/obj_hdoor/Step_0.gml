/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (closed) {
	phy_position_x = approach(phy_position_x, xstart + (dir * 32), 2);
} else {
	phy_position_x = approach(phy_position_x, xstart, 2);
}
