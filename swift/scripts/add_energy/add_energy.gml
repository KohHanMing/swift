///@function add_energy(_object, _energy)
///@param {index} _object
///@param {real} _energy

// This function must only be called on objects that inherit from Damageable
function add_energy(_object, _energy){
	if (_object.MAX_ENERGY - _object.CURR_ENERGY <= _energy) {
		_object.CURR_ENERGY = _object.MAX_ENERGY;
	} else {
		_object.CURR_ENERGY += _energy;
	}
}
