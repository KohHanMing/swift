/// @description Init

u_pos_light = shader_get_uniform(shd_light,"u_pos"); // Send Position to Shader
u_color_light = shader_get_uniform(shd_light,"u_color"); // Send Color to Shader
u_size_light = shader_get_uniform(shd_light,"u_size"); // Send Size to Shader

// Initialize Shadow Surface
shadow_surface = noone;
