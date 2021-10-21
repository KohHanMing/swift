///@function add_health(_object, _health)
///@param {index} _object
///@param {real} _health

// This function must only be called on objects that inherit from Damageable
function add_health(_object, _health){
	if (_object.MAX_HEALTH - _object.CURR_HEALTH <= _health) {
		_object.CURR_HEALTH = _object.MAX_HEALTH;
	} else {
		_object.CURR_HEALTH += _health;
	}
}
