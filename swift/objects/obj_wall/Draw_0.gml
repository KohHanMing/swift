draw_self();

// Silhouette
surface_set_target(obj_silhouette.silhouette_surface); // Draw onto Silhouette Surface
gpu_set_colorwriteenable(false,false,false,true); // Write to Alpha Channel only

// Draw Sprite
draw_sprite_ext(
	sprite_index,
	image_index,
	obj_silhouette.SCALE*(x-camera_get_view_x(view_camera[0])), // Relative Position
	obj_silhouette.SCALE*(y-camera_get_view_y(view_camera[0])), // Relative Position
	obj_silhouette.SCALE*image_xscale, // Relative Scale
	obj_silhouette.SCALE*image_yscale, // Relative Scale
	image_angle,
	c_white,
	image_alpha
);

gpu_set_colorwriteenable(true,true,true,true); // Reset Channel Writing
surface_reset_target();