// Create Silhouette Surface if it does not exist
if !surface_exists(silhouette_surface) {
	silhouette_surface = surface_create(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
}

// Resize Silhouette based on SCALE
surface_resize(silhouette_surface,SCALE*camera_get_view_width(view_camera[0]),SCALE*camera_get_view_height(view_camera[0]));

// Clear the Surface
surface_set_target(silhouette_surface);
draw_clear_alpha(c_black,0);
surface_reset_target();