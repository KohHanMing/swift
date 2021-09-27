///@function phy_follow_path(_instance, _speed, _direction)
///@param {index} _instance
///@param {real} _speed
///@param {real} _direction

function phy_set_vector(_instance, _speed, _direction){
	_instance.phy_speed_x = _speed*cos(_direction*pi/180);
	_instance.phy_speed_y = -_speed*sin(_direction*pi/180);
}