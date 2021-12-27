/// @description Draw Shadows

if !within_view(OWNER) exit;

gpu_set_blendmode_ext(bm_dest_colour, bm_zero);
if (has_shadow_top) {
	draw_sprite_stretched(spr_shadow_on_floor_below,0,x,y-hole_height,hole_width,32);
	draw_sprite_stretched(spr_shadow_on_floor_below,0,x,y-hole_height,hole_width,32);
}

gpu_set_blendmode(bm_normal);
