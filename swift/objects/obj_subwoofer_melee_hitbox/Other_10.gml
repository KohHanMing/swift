/// @description Manual Projectile Collision

center = find_sprite_center(collision_target);
repeat(1) instance_create_layer(center[0],center[1],"Instances",obj_particle_subwoofer_hit);
