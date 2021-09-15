///@function apply_vector(_object, _speed, _direction)
///@param {index} _object
///@param {real} _speed
///@param {real} _direction

function apply_vector (_object, _speed, _direction) {
	curr_hspd = _object.phy_speed*cos(_object.direction*pi/180);
	curr_vspd = _object.phy_speed*sin(_object.direction*pi/180);
	d_hspd = _speed*cos(_direction*pi/180);
	d_vspd = _speed*sin(_direction*pi/180);
	new_hspd = curr_hspd + d_hspd;
	new_vspd = curr_vspd + d_vspd;
	_object.direction = arctan2(new_vspd, new_hspd)*180/pi;
	_object.phy_speed_x = new_hspd;
	_object.phy_speed_y = -new_vspd;
}