function manual_projectile_collision(_inst){
	apply_vector(_inst,phy_speed*P_MASS/_inst.phy_mass,darctan2(-phy_speed_y,phy_speed_x));
    take_damage(_inst, DAMAGE);
    instance_destroy();
}