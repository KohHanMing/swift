// Projectiles must have speed before calling this function

function spawn_player_projectile(_projectile, _offset_forward, _offset_side, _angle){
	
	var offset_x_from_player = _offset_forward*cos(degtorad(_angle)) + _offset_side*sin(degtorad(_angle));
	var offset_y_from_player = _offset_side*cos(degtorad(_angle)) - _offset_forward*sin(degtorad(_angle));
	
	var projectile = instance_create_layer(
		obj_player.sprite_x + offset_x_from_player,
		obj_player.sprite_y + offset_y_from_player,
		"Instances",
		_projectile
	);
	
	with(projectile){
		phy_speed_x = (P_SPEED)*cos(degtorad(_angle));
		phy_speed_y = -(P_SPEED)*sin(degtorad(_angle));
		phy_rotation = -_angle;
		OFFSET_X = offset_x_from_player;
		OFFSET_Y = offset_y_from_player;
		owner = obj_player.id;
	}
	
	return projectile;
}