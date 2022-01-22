/// @description End Fall

// Reset Visual
image_alpha = 1;
image_xscale = 1;
image_yscale = 1;
phy_active = true;

// Respawn at Correct Positions
var new_x = res_x - res_x%32 + 16;
var new_y = res_y - res_y%32 + 16;
phy_position_x = new_x;
phy_position_y = new_y;
x = new_x
y = new_y;

// Reset velocities
phy_speed_x = 0;
phy_speed_y = 0;

take_damage(id, FALL_DAMAGE);

control_enabled = true; // Renable control
