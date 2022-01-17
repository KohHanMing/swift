VIEW_W = 960; // View Width of Minimap
VIEW_H = 960; // View Width of Minimap

Y_OFFSET = 0; // Offset to draw minimap elements outside of room
			  // Change based on room height
			  
MINIMAP_CAM = camera_create_view(0, Y_OFFSET, VIEW_W, VIEW_H); // Create minimap camera

MINIMAP_W = 270; // Width of minimap on GUI layer
MINIMAP_H = 270; // Height of minimap on GUI layer

MINIMAP_X = global.gui_width - obj_ui.PADDING - MINIMAP_W; // Top left position of minimap on GUI layer
MINIMAP_Y = obj_ui.PADDING; // Top left position of minimap on GUI layer

var scale = window_get_width() / global.gui_width; // Scale to adjust positioning from GUI layer to window size
var levels = obj_level_manager.level_sequence_list;
for (var i = 0; i < ds_list_size(levels); i++) { // Iterate through levels
	var rm = levels[|i]; // Current working room
	if (rm != rm_win) {
		// Place viewport on top right corner
		// Positioning is based on window
		room_set_viewport(rm, 1, true, MINIMAP_X * scale, MINIMAP_Y * scale, MINIMAP_W * scale, MINIMAP_H * scale);
	}
}