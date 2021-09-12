///@function apply_vector(_object, _speed, _direction)
///@param {index} _object
///@param {real} _speed
///@param {real} _direction
///@param {real} _mass

function apply_vector (_object, _speed, _direction, _mass) {
	curr_hmom = _object.speed*_object.mass*cos(_object.direction*pi/180);
	curr_vmom = _object.speed*_object.mass*sin(_object.direction*pi/180);
	d_hmom = _speed*_mass*cos(_direction*pi/180);
	d_vmom = _speed*_mass*sin(_direction*pi/180);
	new_hmom = curr_hmom + d_hmom;
	new_vmom = curr_vmom + d_vmom;
	_object.direction = arctan2(new_vmom, new_hmom)*180/pi;
	_object.speed = sqrt(sqr(new_hmom/_object.mass) + sqr(new_vmom/_object.mass));
}