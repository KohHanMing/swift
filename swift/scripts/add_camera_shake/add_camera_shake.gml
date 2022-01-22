///@description Add Camera Shake
///@param Amount
///@param Duration (Seconds)

function add_camera_shake(_amount, _duration){
	ds_list_add(obj_camera.SHAKES, [_amount, _duration * room_speed]);
}
