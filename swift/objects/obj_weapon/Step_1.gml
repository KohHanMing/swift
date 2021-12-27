/// @description Post-Create

if !variable_instance_exists(id,"POST_CREATE") {
	// Read Damage
	dummy_projectile = instance_create_layer(-512,-512,"Instances",WEAPON_PROJECTILE);
	WEAPON_DAMAGE = dummy_projectile.DAMAGE;
	instance_destroy(dummy_projectile);
	POST_CREATE = true;
}