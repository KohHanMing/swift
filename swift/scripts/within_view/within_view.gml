// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function within_view(_inst){
	with(_inst) {
		var view_x = camera_get_view_x(view_camera[0]);
		var view_y = camera_get_view_y(view_camera[0]);
		var view_w = view_wport[0];
		var view_h = view_hport[0];
		if bbox_right >= view_x or bbox_left <= view_x + view_w or bbox_bottom >= view_y or bbox_top <= view_y + view_h return 1;
		else return 0;
	}
}