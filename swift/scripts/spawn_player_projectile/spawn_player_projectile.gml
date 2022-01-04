// Projectiles must have speed before calling this function

function spawn_player_projectile(_projectile, _offset_forward, _offset_side, _angle){
	
	var offset_x_from_player = _offset_forward*dcos(_angle) + _offset_side*dsin(_angle);
	var offset_y_from_player = _offset_side*dcos(_angle) - _offset_forward*dsin(_angle);
	
	var projectile = instance_create_layer(
		obj_player.sprite_x + offset_x_from_player,
		obj_player.sprite_y + offset_y_from_player,
		"Instances",
		_projectile
	);
	
	with(projectile){
		phy_speed_x = (P_SPEED)*dcos(_angle);
		phy_speed_y = -(P_SPEED)*dsin(_angle);
		if P_ROTATES phy_rotation = -_angle;
		OFFSET_X = offset_x_from_player;
		OFFSET_Y = offset_y_from_player;
		owner = obj_player.id;
	}
	
	return projectile;
}