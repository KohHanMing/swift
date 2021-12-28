gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

// Draw Silhouettes
surface_set_target(silhouette_surface);

function draw_self_offset() {
	draw_sprite_ext(sprite_index,image_index,x-camera_get_view_x(view_camera[0]),y-camera_get_view_y(view_camera[0]),image_xscale,image_yscale,image_angle,c_white,image_alpha);
}

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

surface_reset_target();

gpu_set_blendmode(bm_max); // Silhouettes are drawn additively.
draw_surface(silhouette_surface,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));

gpu_set_blendmode(bm_normal); // Reset
gpu_set_alphatestenable(false); // Reset