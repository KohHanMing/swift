///@function take_damage(_object, _damage)
///@param {index} _object
///@param {real} _damage

// This function must only be called on objects that inherit from Damageable
function take_damage(_object, _damage){
	_object.CURR_HEALTH -= _damage;
	_object.damage_tint_time_start = room_speed/2;
	_object.damage_tint_time = _object.damage_tint_time_start;
	if (_object.object_index == obj_player) {
		obj_camera.shaking = true;
		obj_camera.alarm[0] = room_speed/4;
	}
	audio_stop_sound(_object.curr_idle_sfx);
	play_sfx(_object.HIT_SFX,false);
}
