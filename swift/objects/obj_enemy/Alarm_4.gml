/// @description Play idle sfx
// You can write your code in this editor

var i = string(irandom_range(1, 4));
curr_idle_sfx = play_sfx(asset_get_index("sfx_enemy_idle"+i),true);