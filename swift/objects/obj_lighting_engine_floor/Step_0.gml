/// @description Vertices

function quad(_vb,_x1,_y1,_x2,_y2) {
	
	// Triangle 1
	vertex_position_3d(_vb,_x1,_y1,0);
	vertex_position_3d(_vb,_x1,_y1,1);
	vertex_position_3d(_vb,_x2,_y2,0);
	
	//Triangle 2
	vertex_position_3d(_vb,_x1,_y1,1);
	vertex_position_3d(_vb,_x2,_y2,0);
	vertex_position_3d(_vb,_x2,_y2,1);
	
}

vertex_begin(vb,vf);
var _vb = vb;

show_debug_message(" ");

with(obj_wall) {
	
	if !within_view(id) continue; // Exit if out of view
	
	// Base of Wall
	quad(_vb,x,y,x+base_x,y); // Top
	quad(_vb,x,y-base_y,x+base_x,y-base_y); // Bottom
	quad(_vb,x,y,x,y-base_y); // Left
	quad(_vb,x+base_x,y,x+base_x,y-base_y); // Right
}

vertex_end(vb);