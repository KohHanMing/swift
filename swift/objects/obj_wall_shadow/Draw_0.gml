/// @description Insert description here
// You can write your code in this editor

gpu_set_blendmode_ext(bm_dest_colour, bm_zero);
if (has_floor_shadow_below) {
	draw_sprite_stretched(spr_shadow_on_floor_below,0,x-wall_width/2,y,wall_width,32)
}


if (has_floor_shadow_above) {
	draw_sprite_stretched(spr_shadow_on_floor_above,0,x-wall_width/2,y-wall_height-32,wall_width,32)
}

if (has_wall_shadow) {
	draw_sprite_stretched(spr_shadow_on_wall,0,x-wall_width/2,y-32,wall_width,32)
}
gpu_set_blendmode(bm_normal);
