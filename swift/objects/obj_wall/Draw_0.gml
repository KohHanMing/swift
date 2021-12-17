draw_self();

surface_set_target(obj_silhouette.silhouette_surface);
gpu_set_colorwriteenable(false,false,false,true);
draw_self();
gpu_set_colorwriteenable(true,true,true,true);
surface_reset_target();