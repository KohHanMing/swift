// Inherit from parent
event_inherited();

// Align to Player
phy_position_x = obj_player.sprite_x + OFFSET_X;
phy_position_y = obj_player.sprite_y + OFFSET_Y;

if dcos(phy_rotation) > 0 {
	image_yscale = -1;
}

