// Projectiles must have speed before calling this function

function spawn_enemy_projectile(_projectile, _offset_forward, _offset_side, _angle){	
	
	var projectile = instance_create_layer(
	sprite_x+_offset_forward*cos(degtorad(_angle))+_offset_side*sin(degtorad(_angle)),
	sprite_y-_offset_forward*sin(degtorad(_angle))+_offset_side*cos(degtorad(_angle)),
	"Instances",
	_projectile)
	
	
	with(projectile) {
		phy_speed_x = (P_SPEED)*cos(degtorad(_angle));
		phy_speed_y = -(P_SPEED)*sin(degtorad(_angle));
		if P_ROTATES phy_rotation = -_angle;
		owner = other.id;
	}
	
	return projectile;
}
