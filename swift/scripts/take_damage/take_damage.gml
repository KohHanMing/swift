///@function take_damage(_object, _damage)
///@param {index} _object
///@param {real} _damage

// This function must only be called on objects that inherit from Damageable
function take_damage(_object, _damage){
	_object.HEALTH -= _damage;
}
