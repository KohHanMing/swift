/// @description Insert description here
// You can write your code in this editor

VIEW_W = 480;
VIEW_H = 270;

lerp_amt = 0.1;

shaking = false;
shake = 3;

var i;
var levels = obj_level_manager.level_sequence_list;

for (i = 0; i < ds_list_size(levels); i++) {
	var rm = ds_list_find_value(levels, i);
	if (rm != rm_init and rm != rm_win) {
		room_set_view_enabled(rm, true);
		room_set_viewport(rm, 0, true, 0, 0, window_get_width(), window_get_height());
	}
}

CAMERA = camera_create_view(0, 0, VIEW_W, VIEW_H);

//camera_set_view_angle(CAMERA, 45);

//CAMERA = camera_create();

//var viewmat = matrix_build_lookat(x,y,-100,x,y,0,0,1,0);
//var projmat = matrix_build_projection_ortho(480,270,1,32);

//camera_set_view_mat(CAMERA, viewmat);
//camera_set_proj_mat(CAMERA, projmat);