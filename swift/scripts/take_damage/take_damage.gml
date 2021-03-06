///@function take_damage(_object, _damage)
///@param {index} _object
///@param {real} _damage

// This function must only be called on objects that inherit from Damageable
function take_damage(_object, _damage){
	
	_object.CURR_HEALTH -= _damage;
	_object.damage_tint_time_start = room_speed/2;
	_object.damage_tint_time = _object.damage_tint_time_start;
	
	// Player Take Damage
	if (_object.object_index == obj_player) {
		add_camera_shake(3, 1/4);
	}
	
	// Enemy Take Damage
	if object_is_ancestor(_object.object_index,obj_enemy) {
		
	}
	
	audio_stop_sound(_object.curr_idle_sfx);
	if (_object.object_index == obj_player) {
		var i = string(irandom_range(1, 2));
		play_sfx(asset_get_index("sfx_player_hit"+i), false);
	} else {
		play_sfx(_object.HIT_SFX,false);
	}
}
