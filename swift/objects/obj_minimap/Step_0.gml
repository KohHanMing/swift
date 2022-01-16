/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)) {
	camera_set_view_pos(MINIMAP_CAM, obj_player.x-VIEW_W/2, obj_player.y+Y_OFFSET-VIEW_H/2);
}

show_debug_message(string(Y_OFFSET));