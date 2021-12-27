/// @description Draw Floor Lighting

// Variable Definitions for Scope Changes

// Shader Uniforms
var _u_pos_light = u_pos_light;
var _u_size_light = u_size_light;

var _u_pos_shadow = u_pos_shadow;
var _vb = vb;

// Viewport Size
var view_x = global.view_x;
var view_y = global.view_y;
var view_w = global.view_w;
var view_h = global.view_h;

// Create if it does not exist
if !surface_exists(shadow_surface_floor) shadow_surface_floor = surface_create(view_w,view_h);
if !surface_exists(shadow_surface_wall) shadow_surface_wall = surface_create(view_w,view_h);

// Resize in case Viewport changes size
surface_resize(shadow_surface_floor,view_w,view_h);
surface_resize(shadow_surface_wall,view_w,view_h);

// Surface IDs
var _shadow_surface_floor = shadow_surface_floor
var _shadow_surface_wall = shadow_surface_wall


// Draw Floor Lighting
surface_set_target(_shadow_surface_floor);
draw_clear_alpha(c_black,0); // Clear Floor

with(obj_light) { // Loop through all Lights (Floor)
	
	// Set Shadow Areas to A = 1
	gpu_set_blendmode_ext_sepalpha(bm_zero,bm_one,bm_one,bm_zero);
	shader_set(shd_shadow); // Use Shadow Shader
	shader_set_uniform_f(_u_pos_shadow, x-view_x, y-view_y); // Pass Relative Positions to Shader
	
	vertex_submit(_vb,pr_trianglelist,-1); // Draw Triangles

	// Draw Lighting
	gpu_set_blendmode_ext_sepalpha(bm_inv_dest_alpha,bm_one,bm_zero,bm_zero); // Light Drawing Blendmode
	shader_set(shd_light); // Use Light Shader
	
	shader_set_uniform_f(_u_pos_light, x-view_x, y-view_y); // Pass Relative Positions to Shader
	shader_set_uniform_f(_u_size_light, light_size); // Pass Light Size to Shader
	draw_rectangle_color(0,0,view_w,view_h,light_color,light_color,light_color,light_color,0); // Pass Color to Shader
	
}

surface_reset_target(); // GMS says we must reset the target surface before changing it.

// Draw Wall Lighting
surface_set_target(_shadow_surface_wall);
draw_clear_alpha(c_black,0); // Clear Wall

with(obj_light) { // Loop through all Lights (Wall)
	
	shader_set_uniform_f(_u_pos_light, x-view_x, y-view_y); // Pass Relative Positions to Shader
	shader_set_uniform_f(_u_size_light, light_size); // Pass Light Size to Shader
	draw_rectangle_color(0,0,view_w,view_h,light_color,light_color,light_color,light_color,0); // Pass Color to Shader
	
}

surface_reset_target(); // GMS says we must reset the target surface before changing it.

// Render Floor Lighting
draw_lighting(shadow_surface_floor);
