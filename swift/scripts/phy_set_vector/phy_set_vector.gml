///@function phy_follow_path(_object, _speed, _direction)
///@param {index} _object
///@param {real} _speed
///@param {real} _direction

function phy_set_vector(_object, _speed, _direction){
	_object.phy_speed_x = _speed*cos(_direction*pi/180);
	_object.phy_speed_y = -_speed*sin(_direction*pi/180);
}