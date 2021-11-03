/// @description Projectile Explodes into Particles

for (i=0;i<20;i++) instance_create_layer(x+random_range(-1,1),y+random_range(-1,1),"Instances",obj_particle_honey_badger_trail);
