/// @description End Fall

// Reset Visual
image_alpha = 1;
image_xscale = 1;
image_yscale = 1;
phy_active = true;

// Respawn
phy_position_x = respawn_x;
phy_position_y = respawn_y;
x = respawn_x;
y = respawn_y;

// Reset Velocities
phy_speed_x = 0;
phy_speed_y = 0;

take_damage(id, FALL_DAMAGE);

control_enabled = true; // Renable control
