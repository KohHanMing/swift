/// @description Manual Projectile Collision

center = find_sprite_center(collision_target);
repeat(50) instance_create_layer(center[0]+random_range(-20,20),center[1]+random_range(-20,20),"Instances",obj_particle_weapon_melee_hit);
