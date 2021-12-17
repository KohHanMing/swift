function prepare_silhouette() {

	// Prepare Mask for Silhouette

	// Set Up Mask Blending
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false,false,false,true);

	// Draw Alpha Mask
	surface_set_target(obj_silhouette.silhouette_surface);
	draw_set_alpha(0);
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,0);
	surface_reset_target();
	draw_set_alpha(1);

	// Reset Mask Blending
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
}