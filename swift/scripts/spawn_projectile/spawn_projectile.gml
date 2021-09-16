function spawn_projectile(projectile){
	with(instance_create_layer(x+PROJECTILE_OFFSET_FORWARD*cos(degtorad(weapon_angle)),y-PROJECTILE_OFFSET_FORWARD*sin(degtorad(weapon_angle)),"Instances",projectile)){
		weapon_angle = other.weapon_angle;
		phy_speed_x = (P_SPEED)*cos(degtorad(weapon_angle));
		phy_speed_y = -(P_SPEED)*sin(degtorad(weapon_angle));
	}
}