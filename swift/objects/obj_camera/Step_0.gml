/// @description Insert description here
// You can write your code in this editor

//show_debug_message(view_camera[0]);

if (instance_exists(obj_player)) {
	if obj_player.current_weapon_id.object_index == obj_deadeye and mouse_check_button(mb_right) {
		lerp_amt = lerp(lerp_amt, 0.5, 0.1);
	} else {
		lerp_amt = lerp(lerp_amt, 0.1, 0.1);
	}
	
	var _x = obj_player.sprite_x;
	var _y = obj_player.sprite_y;
	var scope_direction = point_direction(_x, _y, mouse_x, mouse_y);
	var scope_distance = min(point_distance(_x, _y, mouse_x, mouse_y), MAX_SCOPE)
	
    x = lerp(x, lerp(_x, _x + lengthdir_x(scope_distance, scope_direction), lerp_amt), 0.5);
    y = lerp(y, lerp(_y, _y + lengthdir_y(scope_distance, scope_direction), lerp_amt), 0.5);
	
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
	
}

