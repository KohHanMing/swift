/// @description Depth Updating

// Adjust Depth Accordingly

if weapon_angle >= 45 and weapon_angle < 225 depth = -(obj_player.y-1); // Behind Player
else depth = -(obj_player.y+1); // In front of Player