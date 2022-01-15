var cam_centre_offset_x = camera_get_view_width(CAMERA) / 2;
var cam_centre_offset_y = camera_get_view_height(CAMERA) / 2;
	
var size = ds_list_size(SHAKES); // Size of SHAKES list
var shake = 0 // Default shake is 0
	
for (var i=0; i < size; i++) {
	if SHAKES[|i][0] > shake shake = SHAKES[|i][0]; // Take Largest Shake
		
	SHAKES[|i][1] -= 1 // Reduce Duration by 1
	if SHAKES[|i][1] == 0 { // Shake Expired
		ds_list_delete(SHAKES, i);
		i--; // Reduce counter by 1
		size--; // Reduce list size by 1
	}
}
	
camera_set_view_pos(CAMERA, x - cam_centre_offset_x + random_range(-shake, shake), y - cam_centre_offset_y + random_range(-shake, shake));