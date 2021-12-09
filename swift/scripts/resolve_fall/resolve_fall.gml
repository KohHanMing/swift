// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resolve_fall(){
	image_alpha = 1;
	image_xscale = 1;
	image_yscale = 1;
	phy_active = true;
	phy_position_x = res_x - res_x%32 + 16;
	phy_position_y = res_y - res_y%32 + 16;
	take_damage(id, FALL_DAMAGE);
}