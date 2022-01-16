/// @description Insert description here
// You can write your code in this editor

VIEW_W = 960;
VIEW_H = 540;
Y_OFFSET = 0; //change this based on room_height
MINIMAP_CAM = camera_create_view(0, Y_OFFSET, VIEW_W, VIEW_H);

MINIMAP_X = window_get_width()*0.85;
MINIMAP_Y = window_get_height()*0.05;

MINIMAP_W = 180;
MINIMAP_H = 180;

var i;
var levels = obj_level_manager.level_sequence_list;

for (i = 0; i < ds_list_size(levels); i++) {
	var rm = ds_list_find_value(levels, i);
	if (rm != rm_win) {
		room_set_viewport(rm, 1, true, MINIMAP_X, MINIMAP_Y, MINIMAP_W, MINIMAP_H);
	}
}