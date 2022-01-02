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
	
	if object_is_ancestor(_object.object_index,obj_enemy) {
		with(_object) event_user(0); // Enemy take damage event.
	}
	
	audio_stop_sound(_object.curr_idle_sfx);
	audio_play_sound_at(_object.HIT_SFX,x,y,0,falloff_ref_dist,falloff_max_dist,1,false,99);
}
