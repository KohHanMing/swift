gpu_set_blendmode_ext(bm_dest_colour, bm_zero);
draw_sprite(spr_shadow,0,x,y+32)
draw_sprite(spr_shadow,0,x-32,y+32);;
gpu_set_blendmode(bm_normal);
draw_self();