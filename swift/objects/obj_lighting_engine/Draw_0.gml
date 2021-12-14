/// @description Draw Light

var _u_pos_light = u_pos_light;
var _u_color_light = u_color_light;
var _u_size_light = u_size_light;
var _u_z_light = u_z_light;

var _u_pos_shadow = u_pos_shadow;
var _u_z_shadow = u_z_shadow;
var _vb = vb;

gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

var _z = 0;

with(obj_light) {

	gpu_set_blendmode(bm_add);

	shader_set(shd_shadow);
	shader_set_uniform_f(_u_pos_shadow, x, y);
	shader_set_uniform_f(_u_z_shadow, _z);
	vertex_submit(_vb,pr_trianglelist,-1);

	gpu_set_blendmode(bm_add);
	
	shader_set(shd_light);
	shader_set_uniform_f(_u_pos_light, x, y);
	shader_set_uniform_f(_u_color_light, color[0], color[1], color[2]);
	shader_set_uniform_f(_u_size_light, light_size);
	shader_set_uniform_f(_u_z_light, _z);
	draw_rectangle(0,0,room_width,room_height,0);
	
	gpu_set_blendmode(bm_normal);
	
	_z--;

}

shader_reset();
gpu_set_ztestenable(false);
gpu_set_zwriteenable(false);