/// @description Draw Light

var _u_pos_light = u_pos_light;
var _u_color_light = u_color_light;
var _u_size_light = u_size_light;

var _u_pos_shadow = u_pos_shadow;
var _vb = vb;

var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

if !surface_exists(shadow_surface) {
	shadow_surface = surface_create(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
}

surface_resize(shadow_surface,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
surface_set_target(shadow_surface);
draw_clear_alpha(c_black,0);

with(obj_light) {

	gpu_set_blendmode_ext_sepalpha(bm_zero,bm_one,bm_one,bm_zero);
	shader_set(shd_shadow);
	shader_set_uniform_f(_u_pos_shadow, x-view_x, y-view_y);
	
	vertex_submit(_vb,pr_trianglelist,-1);

	gpu_set_blendmode_ext_sepalpha(bm_inv_dest_alpha,bm_one,bm_zero,bm_zero);
	
	shader_set(shd_light);
	shader_set_uniform_f(_u_pos_light, x-view_x, y-view_y);
	shader_set_uniform_f(_u_color_light, color[0], color[1], color[2]);
	shader_set_uniform_f(_u_size_light, light_size);
	draw_rectangle(0,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),0);
	
}

surface_reset_target();

gpu_set_blendmode_ext(bm_zero,bm_src_color);
shader_set(shd_shadow_surface);
draw_surface_ext(shadow_surface,view_x,view_y,1,1,0,c_white,obj_game.ambient_darkness);
gpu_set_blendmode(bm_normal);

shader_reset();
