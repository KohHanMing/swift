if !within_view(id) exit;

draw_self();

gpu_set_blendmode_ext(bm_dest_colour,bm_zero);
draw_rectangle_colour(x,y,x+base_x-1,y-sprite_height+base_y,$FFFFFF,$FFFFFF,$333333,$333333,false);
draw_rectangle_colour(x,y,x+base_x-1,y+(sprite_height-base_y)/2,$333333,$333333,$FFFFFF,$FFFFFF,false);
gpu_set_blendmode(bm_normal);