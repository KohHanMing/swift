///@function take_damage(_object, _damage)
///@param {index} _object
///@param {real} _damage

// This function must only be called on objects that inherit from Damageable
function take_damage(_object, _damage){
	_object.CURR_HEALTH -= _damage;
	_object.damage_tint_time_start = room_speed/2
	_object.damage_tint_time = _object.damage_tint_time_start;
}
