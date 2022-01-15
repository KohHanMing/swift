ds_list_add(global.MENU_ELEMENTS,id);
offset_x = 0;
offset_y = 0;

function update_position() {
	x = offset_x + camera_get_view_x(view_camera[0]); // Adjust horizontal position
	y = offset_y + camera_get_view_y(view_camera[0]); // Adjust vertical position
}