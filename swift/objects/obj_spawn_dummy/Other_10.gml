/// @description Activate Real Enemy
// This event is called by obj_spawn_pod

instance_activate_object(CURR_ENEMY); // Activate Real Enemy
CURR_ENEMY.phy_active = true;
instance_destroy();