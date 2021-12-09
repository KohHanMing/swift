/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)) {
    x = lerp(obj_player.x, mouse_x, 0.4);
    y = lerp(obj_player.y, mouse_y, 0.4);
	show_debug_message("x: " + string(x))
	show_debug_message("y: " + string(y))
	/*
    if(point_distance(obj_player.x,obj_player.y,x,y) > max_distance) {
        var dir = point_direction(obj_player.x,obj_player.y,x,y);
        x = obj_player.x + lengthdir_x(max_distance, dir);
        y = obj_player.y + lengthdir_y(max_distance, dir);
    }*/
	
	var cam_centre_offset_x = camera_get_view_width(CAMERA) / 2;
	var cam_centre_offset_y = camera_get_view_height(CAMERA) / 2;
	camera_set_view_pos(CAMERA, x - cam_centre_offset_x, y - cam_centre_offset_y);
}