/// @description Insert description here
// You can write your code in this editor

//show_debug_message(view_camera[0]);

if (instance_exists(obj_player)) {
	if (instance_exists(obj_deadeye) and (mouse_check_button(mb_right))) {
		if (lerp_amt < 0.5) {
			lerp_amt += 0.03;
		}
	} else {
		if (lerp_amt > 0.1) {
			lerp_amt -= 0.03;
		}
	}
	
    x = lerp(obj_player.x, mouse_x, lerp_amt);
    y = lerp(obj_player.y, mouse_y, lerp_amt);
	
	//if (instance_exists(obj_honey_badger) and (mouse_check_button(mb_right))) {
	//	x = lerp(x, mouse_x, lerp_amt+0.4);
	//	y = lerp(y, mouse_y, lerp_amt+0.4);
	//}
	
	//show_debug_message("x: " + string(x))
	//show_debug_message("y: " + string(y))
	/*
    if(point_distance(obj_player.x,obj_player.y,x,y) > max_distance) {
        var dir = point_direction(obj_player.x,obj_player.y,x,y);
        x = obj_player.x + lengthdir_x(max_distance, dir);
        y = obj_player.y + lengthdir_y(max_distance, dir);
    }*/
	
	var cam_centre_offset_x = camera_get_view_width(CAMERA) / 2;
	var cam_centre_offset_y = camera_get_view_height(CAMERA) / 2;
	
	if (shaking) {
		camera_set_view_pos(CAMERA, x - cam_centre_offset_x + random_range(-shake, shake), y - cam_centre_offset_y + random_range(-shake, shake));
	} else {
		camera_set_view_pos(CAMERA, x - cam_centre_offset_x, y - cam_centre_offset_y);
	}
}

