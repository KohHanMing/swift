// Inherit the parent event
event_inherited();
depth = -y;

// Activate Real Enemy
function convert_to_enemy() {
	instance_activate_object(CURR_ENEMY); // Activate Real Enemy
	CURR_ENEMY.phy_active = true;
	instance_destroy();
}