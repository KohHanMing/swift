/// @description Init

u_pos_light = shader_get_uniform(shd_light,"u_pos"); // Send Position to Shader
u_color_light = shader_get_uniform(shd_light,"u_color"); // Send Color to Shader
u_size_light = shader_get_uniform(shd_light,"u_size"); // Send Size to Shader

u_pos_shadow = shader_get_uniform(shd_shadow,"u_pos"); // Send Position to Shader

// Create Buffer
vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();

// Initialize Shadow Surface
shadow_surface = noone;
