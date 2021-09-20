// Projectiles must have speed before calling this function

function spawn_projectile(_projectile, _offset, _angle){
	with(instance_create_layer(x+_offset*cos(degtorad(_angle)),y-_offset*sin(degtorad(_angle)),"Instances",_projectile)){
		phy_speed_x = (P_SPEED)*cos(degtorad(_angle));
		phy_speed_y = -(P_SPEED)*sin(degtorad(_angle));
	}
}