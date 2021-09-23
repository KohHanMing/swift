///@function toggle_obj(_object)

function toggle_obj(_object){
	if (instance_exists(_object)) {
		instance_deactivate_object(_object);
	} else {
		instance_activate_object(_object);
	}
	
	if (_object.phy_active) {
		_object.phy_active = false;
	} else {
		_object.phy_active = true;
	}
}