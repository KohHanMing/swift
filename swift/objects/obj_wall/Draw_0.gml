draw_self();

surface_set_target(obj_silhouette.silhouette_surface);
gpu_set_colorwriteenable(false,false,false,true);
draw_sprite_ext(sprite_index,image_index,x-camera_get_view_x(view_camera[0]),y-camera_get_view_y(view_camera[0]),image_xscale,image_yscale,image_angle,c_white,image_alpha);
gpu_set_colorwriteenable(true,true,true,true);
surface_reset_target();