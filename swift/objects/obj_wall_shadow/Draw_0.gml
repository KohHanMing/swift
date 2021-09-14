/// @description Insert description here
// You can write your code in this editor

gpu_set_blendmode_ext(bm_dest_colour, bm_zero);
if (has_floor_shadow) {
draw_sprite(spr_shadow_on_floor,0,x,y+32)
draw_sprite(spr_shadow_on_floor,0,x-32,y+32);
}
if (has_wall_shadow) {
	draw_sprite(spr_shadow_on_wall,0,x,y);
	draw_sprite(spr_shadow_on_wall,0,x-32,y);
}
gpu_set_blendmode(bm_normal);
