if !surface_exists(silhouette_surface) {
	silhouette_surface = surface_create(view_wport[0],view_hport[0]);
}

surface_set_target(silhouette_surface);
draw_clear_alpha(c_black,0);
surface_reset_target();