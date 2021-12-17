gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

// Draw Player Silhouette
surface_set_target(silhouette_surface);

gpu_set_fog(true,c_lime,0,1);
with(obj_player) draw_self();
with(obj_weapon) draw_self();
with(obj_player_damaging) draw_self();

gpu_set_fog(true,c_red,0,1);
with(obj_enemy) draw_self();
with(obj_enemy_damaging) draw_self();

gpu_set_fog(false,c_white,0,0);

surface_reset_target();

gpu_set_blendmode(bm_add);
gpu_set_alphatestenable(false);

draw_surface(silhouette_surface,view_get_xport(0),view_get_yport(0));

gpu_set_blendmode(bm_normal);