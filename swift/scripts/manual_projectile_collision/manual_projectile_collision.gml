// Manual Projectile Collision
function manual_projectile_collision(_inst){
	
	if ds_list_find_index(p_hit_list,_inst) != -1 return;
	
	apply_vector(_inst,phy_speed*P_MASS/_inst.phy_mass,darctan2(-phy_speed_y,phy_speed_x));
    take_damage(_inst, DAMAGE);
	if (_inst.CURR_HEALTH - DAMAGE < 0 and object_index == obj_weapon_melee_projectile) {
		instance_create_layer(x,y,"Instances", obj_health);
		instance_create_layer(x,y,"Instances", obj_energy);
	}
	
	manual_projectile_collision_event(_inst);
	
	if P_PIERCING {
		ds_list_add(p_hit_list,_inst);
	}
    else instance_destroy();
}


// Event for projectile collision
function manual_projectile_collision_event(_inst) {
	if object_index == obj_weapon_melee_projectile {
		center = find_sprite_center(_inst);
		for (var i=0;i<50;i++) {
			instance_create_layer(center[0]+random_range(-20,20),center[1]+random_range(-20,20),"Instances",obj_particle_weapon_melee_hit);
		}
	}
}