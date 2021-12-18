function within_view(_inst){
	with(_inst) {
		var view_x = camera_get_view_x(view_camera[0]);
		var view_y = camera_get_view_y(view_camera[0]);
		var view_w = camera_get_view_width(view_camera[0]);
		var view_h = camera_get_view_height(view_camera[0]);
		if bbox_right >= view_x or bbox_left <= view_x + view_w or bbox_bottom >= view_y or bbox_top <= view_y + view_h return 1;
		else return 0;
	}
}