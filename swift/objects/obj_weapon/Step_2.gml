/// @description Depth Updating

//adjust depth accordingly

if weapon_angle >= 45 and weapon_angle < 225 depth = -(obj_player.y-1);
else depth = -(obj_player.y+1);