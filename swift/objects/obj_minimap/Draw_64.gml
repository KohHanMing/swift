var border_width = 8 // Minimap border width

draw_sprite_stretched(
	spr_minimap_border,
	0,
	MINIMAP_X - border_width, // Top left corner of minimap including border
	MINIMAP_Y - border_width,  // Top left corner of minimap including border  
	MINIMAP_W + 2 * border_width, // Minimap width including border
	MINIMAP_H + 2 * border_width // Minimap height including border
);