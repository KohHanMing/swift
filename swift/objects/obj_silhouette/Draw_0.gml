function draw_self_offset(_SCALE) {
	draw_sprite_ext(
		sprite_index,
		image_index,
		_SCALE*(x-global.view_x), // Relative Position
		_SCALE*(y-global.view_y), // Relative Position
		_SCALE*image_xscale, // Relative Scale
		_SCALE*image_yscale, // Relative Scale
		image_angle,
		c_white,
		image_alpha
	);
}

// Create Silhouette Surface if it does not exist
if !surface_exists(silhouette_surface) {
	silhouette_surface = surface_create(global.view_w,global.view_h);
}

// Resize Silhouette based on SCALE
surface_resize(silhouette_surface,min(8192,SCALE*global.view_w),min(8192,SCALE*global.view_h));


// Draw on Silhouette Surface
surface_set_target(silhouette_surface);

// Clear the Surface
draw_clear_alpha(c_black,0);

// Set Up Mask Blending
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);

// Sort Silhouette Array by Depth, then ID
array_sort(silhouette_array, function(a, b) {
	return a.depth != b.depth ? b.depth - a.depth : b.id - a.id;
});

var _SCALE = SCALE; // To use in functions.
var length = array_length(silhouette_array);
for (var i = 0; i < length; i += 1) { // Loop through Silhouette Array
	with (silhouette_array[i]) {
		
		if !within_view(id) continue;
		
		var draw_alpha;
		if object_is_ancestor(object_index,obj_wall) draw_alpha = 1; // Walls Cause Silhouettes
		else draw_alpha = 0; // Others Cast Silhouettes

		draw_sprite_ext(
			sprite_index,
			image_index,
			_SCALE*(x-global.view_x), // Relative Position
			_SCALE*(y-global.view_y), // Relative Position
			_SCALE*image_xscale, // Relative Scale
			_SCALE*image_yscale, // Relative Scale
			image_angle,
			c_white,
			draw_alpha
		);
	}
}

// Reset Mask Blending
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha); // Set Blend Mode
gpu_set_alphatestenable(true); // Draw only on A = 1


// Draw Silhouettes
gpu_set_fog(true,c_lime,0,1); // Green is for Player
with(obj_player) draw_self_offset(_SCALE);
with(obj_weapon) draw_self_offset(_SCALE);
with(obj_player_damaging) draw_self_offset(_SCALE);

gpu_set_fog(true,c_red,0,1); // Red is for Enemy + Collectable Health
with(obj_enemy) draw_self_offset(_SCALE);
with(obj_enemy_damaging) draw_self_offset(_SCALE);
with(obj_collectable_health) draw_self_offset(_SCALE);

gpu_set_fog(true,c_aqua,0,1); // Aqua is for Collectable Energy
with(obj_collectable_energy) draw_self_offset(_SCALE);

gpu_set_fog(false,c_white,0,0); // Reset


surface_reset_target(); // Draw on Application Surface

gpu_set_blendmode(bm_max); // Silhouettes are drawn additively.
draw_surface_ext(silhouette_surface,global.view_x,global.view_y,1/SCALE,1/SCALE,0,c_white,1);

gpu_set_blendmode(bm_normal); // Reset
gpu_set_alphatestenable(false); // Reset
