/// @description Vertex

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
	
	if distance_to_object(obj_player) > 384 continue;
	
	quad(_vb,x,y,x+base_x,y);
	quad(_vb,x,y-base_y,x+base_x,y-base_y);
	quad(_vb,x,y,x,y-base_y);
	quad(_vb,x+base_x,y,x+base_x,y-base_y);
}

vertex_end(vb);
