gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha); // Set Blend Mode
gpu_set_alphatestenable(true); // Draw only on A = 1

surface_set_target(silhouette_surface); // Draw on Silhouette Surface

function draw_self_offset() {
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
}

// Draw Silhouette
gpu_set_fog(true,c_lime,0,1); // Green is for Player
with(obj_player) draw_self_offset();
with(obj_weapon) draw_self_offset();
with(obj_player_damaging) draw_self_offset();

gpu_set_fog(true,c_red,0,1); // Red is for Enemy + Collectable Health
with(obj_enemy) draw_self_offset();
with(obj_enemy_damaging) draw_self_offset();
with(obj_collectable_health) draw_self_offset();

gpu_set_fog(true,c_aqua,0,1); // Aqua is for Collectable Energy
with(obj_collectable_energy) draw_self_offset();

gpu_set_fog(false,c_white,0,0); // Reset

surface_reset_target(); // Draw on Application Surface

gpu_set_blendmode(bm_max); // Silhouettes are drawn additively.
draw_surface_ext(silhouette_surface,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1/SCALE,1/SCALE,0,c_white,1);

gpu_set_blendmode(bm_normal); // Reset
gpu_set_alphatestenable(false); // Reset
