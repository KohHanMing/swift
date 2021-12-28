//if !within_view(id) exit;

draw_self();

gpu_set_blendmode_ext(bm_dest_colour,bm_zero);
draw_rectangle_colour(bbox_left,bbox_top,bbox_left+sprite_width,bbox_top+31,$333333,$333333,$FFFFFF,$FFFFFF,false);
gpu_set_blendmode(bm_normal);