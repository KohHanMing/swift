if (instance_exists(obj_player)) {
	// Place camera on drawing area outside of room
	camera_set_view_pos(
		MINIMAP_CAM, 
		obj_player.x - VIEW_W/2,
		obj_player.y + Y_OFFSET-VIEW_H / 2
	);
}