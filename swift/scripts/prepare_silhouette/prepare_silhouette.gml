function prepare_silhouette() {

	// Prepare Mask for Silhouette

	// Set Up Mask Blending
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false,false,false,true);

	// Draw Alpha Mask
	surface_set_target(obj_silhouette.silhouette_surface);
	draw_set_alpha(0);
	draw_sprite_ext(
		sprite_index,
		image_index,
		obj_silhouette.SCALE*(x-camera_get_view_x(view_camera[0])), // Relative Position
		obj_silhouette.SCALE*(y-camera_get_view_y(view_camera[0])), // Relative Position
		obj_silhouette.SCALE*image_xscale, // Relative Scale
		obj_silhouette.SCALE*image_yscale, // Relative Scale
		image_angle,
		c_white,
		0
	);
	
	surface_reset_target(); // Reset
	draw_set_alpha(1); // Reset

	// Reset Mask Blending
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
}
