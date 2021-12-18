if !surface_exists(silhouette_surface) {
	silhouette_surface = surface_create(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
}

surface_resize(silhouette_surface,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));

surface_set_target(silhouette_surface);
draw_clear_alpha(c_black,0);
surface_reset_target();