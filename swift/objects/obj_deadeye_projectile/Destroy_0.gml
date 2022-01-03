/// @description Projectile Explodes into Particles

// Spawn Particles
instance_create_layer(x, y, "Instances",obj_particle_deadeye_expire);

// Create FLash of Light
create_following_light(id,$FFFFFF00,32);
