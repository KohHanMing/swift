// Projectiles must have speed before calling this function

function spawn_player_melee_hitbox(_projectile, _offset_forward, _offset_side, _angle){
	var offset_x_from_player = _offset_forward*cos(degtorad(_angle)) + _offset_side*sin(degtorad(_angle)) + X_OFFSET_FROM_PLAYER_CENTRE;
	var offset_y_from_player = _offset_side*cos(degtorad(_angle)) - _offset_forward*sin(degtorad(_angle)) + Y_OFFSET_FROM_PLAYER_CENTRE;
	
	var melee_hitbox = instance_create_layer(x + offset_x_from_player,y + offset_y_from_player,"Instances",_projectile);
	
	with(melee_hitbox){
		phy_speed_x = (P_SPEED)*cos(degtorad(_angle));
		phy_speed_y = -(P_SPEED)*sin(degtorad(_angle));
		phy_rotation = -_angle;
		OFFSET_X = offset_x_from_player;
		OFFSET_Y = offset_y_from_player;
		owner = obj_player.id;
	}
	
	return melee_hitbox;
}