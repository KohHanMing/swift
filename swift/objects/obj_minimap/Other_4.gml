if (room != rm_init_game and room != rm_win) {
	view_camera[1] = MINIMAP_CAM; // Assign camera
	Y_OFFSET = room_height*2; // Adjust Y_OFFSET to be outside of room
}