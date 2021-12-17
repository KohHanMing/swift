gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

// Draw Silhouettes
surface_set_target(silhouette_surface);

gpu_set_fog(true,c_lime,0,1); // Green is for Player
with(obj_player) draw_self();
with(obj_weapon) draw_self();
with(obj_player_damaging) draw_self();

gpu_set_fog(true,c_red,0,1); // Red is for Enemy
with(obj_enemy) draw_self();
with(obj_enemy_damaging) draw_self();

gpu_set_fog(false,c_white,0,0); // Reset

surface_reset_target();

gpu_set_alphatestenable(false); // Reset

gpu_set_blendmode(bm_add); // Silhouettes are drawn additively.
draw_surface(silhouette_surface,view_get_xport(0),view_get_yport(0));

gpu_set_blendmode(bm_normal); // Reset