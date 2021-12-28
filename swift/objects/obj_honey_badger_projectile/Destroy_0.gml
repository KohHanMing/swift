/// @description Projectile Explodes into Particles

// Spawn Particles
repeat(50) instance_create_layer(x+random_range(-1,1),y+random_range(-1,1),"Instances",obj_particle_honey_badger_expire);

// Create FLash of Light
create_following_light(id,$FF00FF00,16);
