/// @description Init & Function Declaration

function draw_lighting(_surface) { // Draw Light Surface onto Application Surface
	
	gpu_set_blendmode_ext(bm_zero,bm_src_color); // Multiply Blend Mode
	shader_set(shd_shadow_surface); // Use Shadow Surface Shader
	draw_surface_ext(_surface,global.view_x,global.view_y,1,1,0,c_white,obj_game.ambient_darkness); // Draw Surface with Ambient Darkness
	gpu_set_blendmode(bm_normal); // Reset Blend Mode
	shader_reset(); // Reset Shader
}

// Uniforms
u_pos_light = shader_get_uniform(shd_light,"u_pos"); // Send Position to Shader
u_size_light = shader_get_uniform(shd_light,"u_size"); // Send Size to Shader

u_pos_shadow = shader_get_uniform(shd_shadow,"u_pos"); // Send Position to Shader

// Create Buffer
vertex_format_begin();
vertex_format_add_position_3d();
vf = vertex_format_end();
vb = vertex_create_buffer();

// Initialize Shadow Surface
shadow_surface_floor = noone;
shadow_surface_wall = noone;