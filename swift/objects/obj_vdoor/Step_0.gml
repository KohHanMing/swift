/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (closed) {
	phy_position_y = approach(phy_position_y, ystart + (dir * 32), 2);
} else {
	phy_position_y = approach(phy_position_y, ystart, 2);
}
