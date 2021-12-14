/// @description Draw Light

var _u_pos_light = u_pos_light;
var _u_color_light = u_color_light;
var _u_size_light = u_size_light;

var _u_pos_shadow = u_pos_shadow;
var _vb = vb;

if !surface_exists(shadow_surface) {
	shadow_surface = surface_create(view_wport[0],view_hport[0]);
}

surface_set_target(shadow_surface);

draw_clear_alpha(c_black,0);
with(obj_light) {

	gpu_set_blendmode_ext_sepalpha(bm_zero,bm_one,bm_one,bm_zero);
	shader_set(shd_shadow);
	shader_set_uniform_f(_u_pos_shadow, x, y);
	
	vertex_submit(_vb,pr_trianglelist,-1);

	gpu_set_blendmode_ext_sepalpha(bm_inv_dest_alpha,bm_one,bm_zero,bm_zero);
	
	shader_set(shd_light);
	shader_set_uniform_f(_u_pos_light, x, y);
	shader_set_uniform_f(_u_color_light, color[0], color[1], color[2]);
	shader_set_uniform_f(_u_size_light, light_size);
	draw_rectangle(0,0,room_width,room_height,0);
	
}

surface_reset_target();

gpu_set_blendmode_ext(bm_zero,bm_src_color);
shader_set(shd_shadow_surface);
draw_surface_ext(shadow_surface,0,0,1,1,0,c_white,0.8);
gpu_set_blendmode(bm_normal);

shader_reset();