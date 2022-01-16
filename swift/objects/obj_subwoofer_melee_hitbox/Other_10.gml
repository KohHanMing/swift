/// @description Manual Projectile Collision

center = find_sprite_center(collision_target);

var _inst = instance_create_layer(center[0],center[1],"Instances",obj_particle_subwoofer_hit);
_inst.owner = collision_target.id;
