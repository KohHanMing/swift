///@function heal(_object, _health)
///@param {index} _object
///@param {real} _health

// This function must only be called on objects that inherit from Damageable
function heal(_object, _health){
	_object.HEALTH += _health;
}
