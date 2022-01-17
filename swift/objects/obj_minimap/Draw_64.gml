function draw_bbox_rectangle(center_x, center_y, _scale) {
	var rel_x1 = bbox_left - obj_player.x;
	var rel_y1 = bbox_top - obj_player.y;
	var rel_x2 = bbox_right - obj_player.x
	var rel_y2 = bbox_bottom - obj_player.y;
	draw_rectangle(
		center_x + rel_x1 * _scale,
		center_y + rel_y1 * _scale,
		center_x + rel_x2 * _scale,
		center_y + rel_y2 * _scale,
		false
	);
}

function draw_entity_circle(center_x, center_y, _scale) {
	var rel_x = sprite_x - obj_player.sprite_x;
	var rel_y = sprite_y - obj_player.sprite_y;
	draw_circle(
		center_x + rel_x * _scale,
		center_y + rel_y * _scale,
		obj_minimap.ENTITY_SIZE,
		false
	);
}

// Create Mask
gpu_set_blendenable(false); // Disable Blending
gpu_set_colorwriteenable(false,false,false,true); // Enable only alpha channel to protect application surface
draw_set_alpha(0); // Set alpha to 0
draw_rectangle(0,0, global.gui_width,global.gui_height, false); // Draw an alpha 0 rectangle over the entire application surface
draw_set_alpha(1); // Reset alpha to 1
draw_rectangle(MINIMAP_X, MINIMAP_Y, MINIMAP_X + MINIMAP_W, MINIMAP_Y + MINIMAP_H, false); // The mask area now has alpha of 1
gpu_set_blendenable(true); // Return to normal blending
gpu_set_colorwriteenable(true,true,true,true); // Return to normal color write

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha); // Destination Alpha Mode
gpu_set_alphatestenable(true); // Read alpha from screen instead of from sprite

// Variables
var center_x = MINIMAP_X + MINIMAP_W / 2;
var center_y = MINIMAP_Y + MINIMAP_H / 2;
var _scale = MINIMAP_H / global.view_h * MINIMAP_SCALE;

draw_set_color(c_red); // Holes are Gray
with (obj_hole) draw_bbox_rectangle(center_x, center_y, _scale);
draw_set_color(c_white); // Walls are Red
with (obj_wall) draw_bbox_rectangle(center_x, center_y, _scale)
draw_set_color(c_blue); // Breakables are Blue
with (obj_breakable) draw_bbox_rectangle(center_x, center_y, _scale);
draw_set_color(c_lime); // Player is Green
with (obj_player) draw_entity_circle(center_x, center_y, _scale);
draw_set_color(c_red); // Enemy is Red
with (obj_enemy) draw_entity_circle(center_x, center_y, _scale);

draw_set_color(c_white); // Reset

// Restore Normal Drawing
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);

// Border
var border_width = 16 // Minimap border width

draw_sprite_stretched(
	spr_minimap_border,
	0,
	MINIMAP_X - border_width, // Top left corner of minimap including border
	MINIMAP_Y - border_width,  // Top left corner of minimap including border  
	MINIMAP_W + 2 * border_width, // Minimap width including border
	MINIMAP_H + 2 * border_width // Minimap height including border
);