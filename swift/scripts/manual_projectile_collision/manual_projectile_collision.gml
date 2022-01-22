// Manual Projectile Collision
function manual_projectile_collision(_inst){
	
	if ds_list_find_index(p_hit_list,_inst) != -1 return; // Exit if collision target has already been hit
	else if p_piercing_expired return; // Exit if piercing projectile has expired, but still visually exists
	
	if object_is_ancestor(object_index,obj_player_melee_hitbox) {
		if collision_line(owner.x,owner.y,_inst.x,_inst.y,obj_wall,false,true) return;
		// Exit if line of sight is blocked by wall
	}
	
	apply_vector(_inst,phy_speed*P_MASS/_inst.phy_mass,darctan2(-phy_speed_y,phy_speed_x));
    take_damage(_inst, DAMAGE);
	if (_inst.CURR_HEALTH - DAMAGE < 0 and object_is_ancestor(object_index,obj_player_melee_hitbox)) {
		instance_create_layer(x,y,"Instances", obj_collectable_health);
		instance_create_layer(x,y,"Instances", obj_collectable_energy);
	}
	
	collision_target = _inst; // Save _inst into collision_target of damaging if needed.
	event_user(COLLISION); // Manual Projectile Collision Event
	
	if P_PIERCING {
		ds_list_add(p_hit_list,_inst); // Add collision target into hit list
	} else if P_PIERCING_EXPIRE == false {
		p_piercing_expired = true;
	}
    else {
		expired = true;
	}
}

function manual_breakable_collision(_inst){
	
	if ds_list_find_index(p_hit_list,_inst) != -1 return;
	else if p_piercing_expired return; // Exit if piercing projectile has expired, but still visually exists
	
	collision_target = _inst; // Save _inst into collision_target of damaging if needed.
	event_user(COLLISION); // Manual Projectile Collision Event
	
	repeat(DAMAGE) with(_inst) event_user(TAKE_DAMAGE); // Make obj_breakable run breaking code
	
	if P_PIERCING {
		ds_list_add(p_hit_list,_inst); // Add collision target into hit list
	} else if P_PIERCING_EXPIRE == false {
		p_piercing_expired = true;
	}
    else expired = true;
}