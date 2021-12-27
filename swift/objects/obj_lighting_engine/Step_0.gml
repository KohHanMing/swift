/// @description Vertices

function quad(_vb,_x1,_y1,_x2,_y2) {
	
	// Triangle 1
	vertex_position_3d(_vb,_x1-camera_get_view_x(view_camera[0]),_y1-camera_get_view_y(view_camera[0]),0);
	vertex_position_3d(_vb,_x1-camera_get_view_x(view_camera[0]),_y1-camera_get_view_y(view_camera[0]),1);
	vertex_position_3d(_vb,_x2-camera_get_view_x(view_camera[0]),_y2-camera_get_view_y(view_camera[0]),0);
	
	//Triangle 2
	vertex_position_3d(_vb,_x1-camera_get_view_x(view_camera[0]),_y1-camera_get_view_y(view_camera[0]),1);
	vertex_position_3d(_vb,_x2-camera_get_view_x(view_camera[0]),_y2-camera_get_view_y(view_camera[0]),0);
	vertex_position_3d(_vb,_x2-camera_get_view_x(view_camera[0]),_y2-camera_get_view_y(view_camera[0]),1);
	
}

vertex_begin(vb,vf);
var _vb = vb;

with(obj_wall) {
	
	if !within_view(id) continue; // Exit if out of view
	
	// Base of Wall
	quad(_vb,x,y,x+base_x,y-base_y); // Bottom Left - Top Right
	quad(_vb,x,y-base_y,x+base_x,y); // Top Left - Bottom Right
}

vertex_end(vb);
