/// @description Init

u_pos_light = shader_get_uniform(shd_light,"u_pos");
u_color_light = shader_get_uniform(shd_light,"u_color");
u_size_light = shader_get_uniform(shd_light,"u_size");

u_z_light = shader_get_uniform(shd_light,"u_z");

u_pos_shadow = shader_get_uniform(shd_shadow,"u_pos");
u_z_shadow = shader_get_uniform(shd_shadow,"u_z");

vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();
