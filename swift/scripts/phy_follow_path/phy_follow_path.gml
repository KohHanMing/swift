///@function phy_follow_path(_instance, _speed, _path, _node)
///@param {index} _instance
///@param {real} _speed
///@param {real} _path
///@param {real} _node

function phy_follow_path(_instance, _speed, _path, _node = 1){
	var nextNodeX = path_get_point_x(_path, _node);
	var nextNodeY = path_get_point_y(_path, _node);
	var nextNodeDir = point_direction(_instance.x, _instance.y, nextNodeX, nextNodeY);
	phy_set_vector(_instance, _speed, nextNodeDir);
}