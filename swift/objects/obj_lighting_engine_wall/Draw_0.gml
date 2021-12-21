/// @description Draw Light

var _u_pos_light = u_pos_light;
var _u_size_light = u_size_light;

var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

if !surface_exists(shadow_surface) {
	shadow_surface = surface_create(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
}

surface_resize(shadow_surface,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
surface_set_target(shadow_surface);
draw_clear_alpha(c_black,0);

with(obj_light) {

	gpu_set_blendmode_ext_sepalpha(bm_inv_dest_alpha,bm_one,bm_zero,bm_zero);
	
	shader_set(shd_light);
	shader_set_uniform_f(_u_pos_light, x-view_x, y-view_y);
	shader_set_uniform_f(_u_size_light, light_size);
	draw_rectangle_color(0,0,camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),light_color,light_color,light_color,light_color,0);
	
}

surface_reset_target();

gpu_set_blendmode_ext(bm_zero,bm_src_color);
shader_set(shd_shadow_surface);
draw_surface_ext(shadow_surface,view_x,view_y,1,1,0,c_white,obj_game.ambient_darkness);
gpu_set_blendmode(bm_normal);

shader_reset();
